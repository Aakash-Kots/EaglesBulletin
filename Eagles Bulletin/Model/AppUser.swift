//
//  AppUser.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 21/08/22.
//

import Foundation
import FirebaseFirestore
import Firebase
import FirebaseFirestoreSwift

struct AppUser: Decodable, Identifiable {
    @DocumentID var id: String?
    let uid: String
    let email: String

}
