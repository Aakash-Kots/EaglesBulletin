//
//  ContentView.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 08/08/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    var body: some View {
        Group() {
            if authViewModel.userSession != nil {
                NavigationBarView()
            } else {
                LoginView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
