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
        }
        
        
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
