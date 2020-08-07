//
//  TabMapView.swift
//  dBus redesign
//
//  Created by Julen Miner on 06/08/2020.
//  Copyright © 2020 Julen Miner. All rights reserved.
//

import SwiftUI
import MapKit

struct TabMapView: View {
    @State var busStopPoints: [BusStopPoint] = busStops
    @State var centerCoordinate: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: CLLocationDegrees(43.322302), longitude: CLLocationDegrees(-1.983218))
    @State var cardPosition = CardPosition.bottom
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            MapView(busStopPoints: $busStopPoints, centerCoordinate: $centerCoordinate, cardPosition: $cardPosition)
                .edgesIgnoringSafeArea(.top)
            VStack {
                Button(action: {}) {
                    Image(systemName: "location.fill")
                        .padding()
                        .background(Color("bus-blue"))
                        .foregroundColor(Color.white)
                        .cornerRadius(8)
                }
            }
            .padding(.bottom, 32)
            .padding(.trailing)
            SlideOverCard(position: $cardPosition) {
                VStack {
                    Image(systemName: "info")
                    Text("Maitland Bay")
                        .font(.headline)
                    Spacer()
                }.frame(width: UIScreen.main.bounds.width)
            }
        }
    }
}

struct TabMapView_Previews: PreviewProvider {
    static var previews: some View {
        TabMapView()
    }
}

final class BusStopPoint: NSObject, MKAnnotation {
    let title: String?
    let coordinate: CLLocationCoordinate2D
    let id: Int
    let buses: [Int]
  
    init(title: String?, coordinate: CLLocationCoordinate2D, id: Int, buses: [Int]) {
        self.title = title
        self.coordinate = coordinate
        self.id = id
        self.buses = buses
    }
}
