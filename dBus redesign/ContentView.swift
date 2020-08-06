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
           Text("Map")
                .tabItem {
                    Image("bus-stop-icon")
                        .resizable()
                        .clipped()
                    Text("Map")
                }
            Text("Saved stops")
                .tabItem {
                    Image("bookmark-icon")
                    Text("Saved stops")
                 }
           Text("Bus lines timetables and routes")
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
