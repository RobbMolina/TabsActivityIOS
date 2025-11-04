//
//  ContentView.swift
//  Tabs
//
//  Created by win603 on 31/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            WelcomeView()
                .tabItem {
                    Image(systemName: "clock")
                    Text("Contador")
                }
        }.accentColor(.red)
    }
}


#Preview {
    ContentView()
}
