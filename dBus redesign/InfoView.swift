//
//  InfoView.swift
//  dBus redesign
//
//  Created by Julen Miner on 08/08/2020.
//  Copyright © 2020 Julen Miner. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationView {
            VStack {
                Form{
                    Section{
                        NavigationLink(destination: EmptyView()) {
                            VStack(alignment: .leading){
                                Text("Get directions")
                                    .font(.system(size: 22))
                                Text("How to go from one place to another.")
                                    .font(.subheadline)
                            }
                        }
                        NavigationLink(destination: EmptyView()) {
                            VStack(alignment: .leading){
                                Text("Set alarms")
                                    .font(.system(size: 22))
                                Text("Receive a notification before the bus arrives to your stop.")
                                    .font(.subheadline)
                            }
                        }
                        NavigationLink(destination: EmptyView()) {
                            VStack(alignment: .leading){
                                Text("Recharge transport card")
                                    .font(.system(size: 22))
                                Text("Opens a web browser that allows you to recharge the transport card.")
                                    .font(.subheadline)
                            }
                        }
                    }
                    Section {
                        NavigationLink(destination: EmptyView()) {
                            VStack(alignment: .leading){
                                Text("Read QR code")
                                    .font(.system(size: 22))
                                Text("Read the QR code of the bus stop and check the expected time of arrival.")
                                    .font(.subheadline)
                            }
                        }
                        NavigationLink(destination: EmptyView()) {
                            VStack(alignment: .leading){
                                Text("Get info with AR")
                                    .font(.system(size: 22))
                                Text("Use the Layar application to get more information of the bus stop with augmented reality.")
                                    .font(.subheadline)
                            }
                        }
                    }
                    Section {
                        NavigationLink(destination: EmptyView()) {
                            VStack(alignment: .leading){
                                Text("\"How to use the app\" video")
                                    .font(.system(size: 22))
                            }
                        }
                        NavigationLink(destination: EmptyView()) {
                            VStack(alignment: .leading){
                                Text("Change language")
                                    .font(.system(size: 22))
                            }
                        }
                        NavigationLink(destination: EmptyView()) {
                            VStack(alignment: .leading){
                                Text("See license")
                                    .font(.system(size: 22))
                            }
                        }
                    }
                }
            }
        .navigationBarTitle("More info")
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

struct EmptyView: View {
    var body: some View {
        Text("")
    }
}
