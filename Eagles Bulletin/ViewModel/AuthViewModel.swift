//
//  AuthViewModel.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 21/08/22.
//

import Foundation
import Firebase
import FirebaseAuth

class AuthViewModel: ObservableObject {
    @Published var userSession: User?
    @Published var currentUser: AppUser?
    
    
    static let shared = AuthViewModel()
    
    
    init() {
        self.userSession = Auth.auth().currentUser
        fetchUser()
    }
    
    func fetchUser() {
        guard let uid = userSession?.uid else { return }
        USER_COLLECTION.document(uid).getDocument { snapshot, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let user = try? snapshot?.data(as: AppUser.self) else { return }
            self.currentUser = user
        }
        
    }
    
    
    func signUp(withEmail email: String, password: String) {
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            
            guard let user = result?.user else { return }
            let data: [String: Any] = ["uid": user.uid, "email": user.email ?? ""]
            USER_COLLECTION.document(user.uid).setData(data) { err in
                self.userSession = user
                self.fetchUser()
            }
        }
          
    }
    
    func login(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let user = result?.user else { return }
            self.userSession = user
            self.fetchUser()
            
        }
    }
    
    func signOut() {
        try? Auth.auth().signOut()
        self.userSession = nil
        self.currentUser = nil
    }
}
