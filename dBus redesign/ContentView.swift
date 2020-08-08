//
//  ContentView.swift
//  dBus redesign
//
//  Created by Julen Miner on 06/08/2020.
//  Copyright © 2020 Julen Miner. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
           TabMapView()
                .tabItem {
                    Image("bus-stop-icon")
                        .resizable()
                        .clipped()
                    Text("Map")
                }
            SavedStopsView()
                .tabItem {
                    Image("bookmark-icon")
                    Text("Saved stops")
                 }
           BusLinesView()
                .tabItem {
                    Image("bus-icon")
                    Text("Bus lines")
                }
            Text("More information")
                .tabItem {
                    Image(systemName: "info")
                    Text("Info")
                }
        }.accentColor(Color("bus-green"))
            .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
