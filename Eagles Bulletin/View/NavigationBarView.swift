//
//  NavigationBarView.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 10/08/22.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            About()
                .tabItem {
                    Label("About", systemImage: "person.3")
                }
        }
        
        
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
