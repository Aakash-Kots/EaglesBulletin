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
            
            Team()
                .tabItem {
                    Label("Our Team", systemImage: "person.3")
                }
            
            AddArticleView()
                .tabItem {
                    Label("Add", systemImage: "plus")
                }
        }
        
        
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
