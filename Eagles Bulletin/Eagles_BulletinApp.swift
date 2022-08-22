//
//  Eagles_BulletinApp.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 08/08/22.
//

import SwiftUI
import Firebase
@main
struct Eagles_BulletinApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AuthViewModel.shared)
        }
    }
    
}
