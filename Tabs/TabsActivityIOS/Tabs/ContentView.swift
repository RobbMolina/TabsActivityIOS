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
            Text("Welcome Screen")
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            Text("Contador Screen")
                .tabItem {
                    Image(systemName: "clock")
                    Text("Contador")
                }
            Text("Contador Screen")
                .tabItem {
                    Image(systemName: "clock")
                    Text("Contador")
                }
            Text("Contador Screen")
                .tabItem {
                    Image(systemName: "clock")
                    Text("Contador")
                }
            Text("Contador Screen")
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
