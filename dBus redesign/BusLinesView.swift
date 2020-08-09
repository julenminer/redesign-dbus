//
//  BusLinesView.swift
//  dBus redesign
//
//  Created by Julen Miner on 08/08/2020.
//  Copyright © 2020 Julen Miner. All rights reserved.
//

import SwiftUI

struct BusLinesView: View {
    var lines = getLines()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(lines, id: \.self) { line in
                    NavigationLink(destination: EmptyView())  {
                        HStack {
                            Text("\(line)")
                                .font(.system(size: 20, weight: Font.Weight.bold, design: Font.Design.rounded))
                                .frame(width: 30, height: 30)
                                .foregroundColor(Color.white)
                                .padding(6)
                                .background(getLineColor(number: line))
                                .cornerRadius(40)
                            Text(getLineName(number: line))
                            Spacer()
                        }
                        .padding(.vertical, 8)
                    }
                }
            }
        .navigationBarTitle("Bus lines")
        }
    }
}

struct BusLinesView_Previews: PreviewProvider {
    static var previews: some View {
        BusLinesView()
    }
}
