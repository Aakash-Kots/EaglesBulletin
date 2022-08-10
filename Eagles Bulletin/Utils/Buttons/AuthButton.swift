//
//  AuthButton.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 08/08/22.
//

import SwiftUI

struct AuthButton: View {
    var text: String
    var body: some View {
        Text(text)
            .foregroundColor(.black)
            .bold()
            .frame(width: 306, height: 50)
            .background(Color("Primary"))
            .cornerRadius(15)
            .shadow(color: .black.opacity(0.10), radius: 10)
            
    }
}

struct AuthButton_Previews: PreviewProvider {
    static var previews: some View {
        AuthButton(text: "Hello")
    }
}
