//
//  SecureTextField.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 08/08/22.
//

import SwiftUI

struct SecureTextField: View {
    var placeholder: String
    @Binding var text: String
    var imageName: String
    var body: some View {
        ZStack {
            HStack() {
                Image(systemName: imageName)
                SecureField(placeholder, text: $text)
                
            }
            .frame(width: 300, height: 60)
            .padding(.horizontal)
            .background(Color("TextField"))
            .cornerRadius(10)
        }
    }
}


struct SecureTextField_Previews: PreviewProvider {
    static var previews: some View {
        SecureTextField(placeholder: "Password", text: .constant(""), imageName: "lock")
    }
}
