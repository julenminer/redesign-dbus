//
//  SavedStopsView.swift
//  dBus redesign
//
//  Created by Julen Miner on 07/08/2020.
//  Copyright © 2020 Julen Miner. All rights reserved.
//

import SwiftUI

struct SavedStopsView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(busStops) { busStop in
                    HStack {
                        Image("bus-stop-icon")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(.trailing, 8)
                        VStack(alignment: .leading) {
                            Text("\(busStop.id) · " + busStop.title!)
                                .font(.headline)
                            HStack {
                                ForEach(busStop.buses, id: \.self) { bus in
                                    Text("\(bus)")
                                        .font(.subheadline)
                                        .frame(width: 20, height: 20, alignment: .center)
                                        .foregroundColor(Color.white)
                                        .padding(4)
                                        .background(getLineColor(number: bus))
                                        .cornerRadius(40)
                                }
                            }
                        }
                    }
                    .padding(.vertical, 8)
                }
            }
        .navigationBarTitle("Saved stops")
        }
    }
}

func fixedLengthString(_ string: String, length: Int) -> String {
    if string.count < length {
        var blankSpaces = ""
        for _ in string.count...length {
            blankSpaces.append(" ")
        }
        return blankSpaces.appending(string)
    }
    return string
}

struct SavedStopsView_Previews: PreviewProvider {
    static var previews: some View {
        SavedStopsView()
    }
}
