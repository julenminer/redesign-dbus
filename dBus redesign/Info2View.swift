//
//  Info2View.swift
//  dBus redesign
//
//  Created by Julen Miner on 08/08/2020.
//  Copyright © 2020 Julen Miner. All rights reserved.
//

import SwiftUI

struct Info2View: View {
    let gradient = Gradient(colors: [Color("bus-blue"), Color("bus-green"), Color.white.opacity(0)])
    
    var body: some View {
        ZStack {
            VStack {
                Rectangle()
                    .fill(
                        LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
                ).edgesIgnoringSafeArea(.top)
                    .frame(height: UIScreen.main.bounds.height/4)
                Spacer()
            }.background(Color.gray.opacity(0.5))
            VStack {
                HStack {
                    Text("More Info")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    Spacer()
                }
                ScrollView {
                    VStack(spacing: 0.0) {
                        CardView(title: "Get directions", subtitle: "How to go from one place to another.", iconName: "arrow.right")
                        CardView(title: "Set alarms", subtitle: "Receive a notification before the bus arrives to your stop.", iconName: "arrow.right")
                        CardView(title: "Recharge transport card", subtitle: "Opens a web browser that allows you to recharge the transport card.", iconName: "arrow.right")
                        CardView(title: "Read QR code", subtitle: "Read the QR code of the bus stop and check the expected time of arrival.", iconName: "arrow.right")
                        CardView(title: "Get info with AR", subtitle: "Use the Layar application to get more information of the bus stop with augmented reality.", iconName: "arrow.right")
                        CardViewNoSubtitle(title: "\"How to use the app\" video", iconName: "arrow.right")
                        CardViewNoSubtitle(title: "Change language", iconName: "arrow.right")
                        CardViewNoSubtitle(title: "See license", iconName: "arrow.right")
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct Info2View_Previews: PreviewProvider {
    static var previews: some View {
        Info2View()
    }
}

struct CardView: View {
    let title: String
    let subtitle: String
    let iconName: String
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        HStack{
            VStack {
                VStack(alignment: .leading){
                    Text(title)
                        .font(.system(size: 22))
                    Text(subtitle)
                        .font(.subheadline)
                }
            }
            Spacer()
            Image(systemName: iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25)
        }
        .padding()
        .background(colorScheme == .light ? Color.white : Color.black)
        .cornerRadius(16)
        .padding(8)
        
    }
}

struct CardViewNoSubtitle: View {
    let title: String
    let iconName: String
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        HStack{
            VStack {
                VStack(alignment: .leading){
                    Text(title)
                        .font(.system(size: 22))
                }
            }
            Spacer()
            Image(systemName: iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25)
        }
        .padding()
        .background(colorScheme == .light ? Color.white : Color.black)
        .cornerRadius(16)
        .padding(8)
    }
}
