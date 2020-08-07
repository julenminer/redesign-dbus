//
//  BusStopTimes.swift
//  dBus redesign
//
//  Created by Julen Miner on 07/08/2020.
//  Copyright © 2020 Julen Miner. All rights reserved.
//

import SwiftUI

struct BusStopTimes: View {
    @Binding var busStop: BusStopPoint
    
    var body: some View {
        VStack {
            HStack {
                Image("bus-stop-icon")
                    .resizable()
                    .frame(width: 40, height: 40, alignment: Alignment.center)
                VStack(alignment: .leading) {
                    Text(busStop.title!)
                    Text("Parada \(busStop.id)").font(.subheadline)
                }
                .padding(.leading)
                Spacer()
            }
            Divider()
            ForEach(busStop.buses, id: \.self) { bus in
                VStack {
                    HStack {
                        Text("\(bus)")
                            .font(.title)
                            .frame(width: 40, height: 40, alignment: .center)
                            .foregroundColor(Color.white)
                            .padding(8)
                            .background(getLineColor(number: bus))
                            .cornerRadius(40)
                        Text(getLineName(number: bus))
                        Spacer()
                        VStack {
                            Text("7")
                                .font(.title)
                            Text("minutes")
                                .font(.caption)
                        }
                    }
                    Divider()
                }
            }
        }
        .padding(.horizontal)
    }
}

struct BusStopTimes_Previews: PreviewProvider {
    static var previews: some View {
        BusStopTimes(busStop: .constant(BusStopPoint(title: "Boulevard 9", coordinate: .init(latitude: 43.3224735, longitude: -1.9830205), id: 1, buses: [21, 28])))
    }
}