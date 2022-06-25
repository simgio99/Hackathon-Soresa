//
//  MainView.swift
//  Soresa
//
//  Created by Simone Giordano on 25/06/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Label("Tab 1", systemImage: "list.dash")
                }
            ContentView()
                .tabItem {
                    Label("Tab 2", systemImage: "list.dash")
                }
            ContentView()
                .tabItem {
                    Label("Tab 3", systemImage: "list.dash")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
