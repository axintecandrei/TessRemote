//
//  ContentView.swift
//  war-challange
//
//  Created by Axinte Andrei on 04.02.2022.
//

import SwiftUI

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 200, height: 40)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
            
    }
}

struct MenuView: View {
    private let buttonPadding = 20.0
    var body: some View {
        TabView{
            DeviceView()
                .tabItem{
                    Label("Devices", systemImage: "bolt.car")
                }
            SimpleControlView()
                .tabItem{
                    Label("Simple Control", systemImage: "appletvremote.gen2")
                }
            MapView()
                .tabItem{
                    Label("Map", systemImage: "map.circle")
                }
            AdvanceControlView()
                .tabItem{
                    Label("Advance Control", systemImage: "gamecontroller.fill")
                }
        }
     
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
