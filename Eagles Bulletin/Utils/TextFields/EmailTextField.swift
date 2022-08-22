//
//  AuthTextField.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 08/08/22.
//

import SwiftUI

struct EmailTextField: View {
    var placeholder: String
    @Binding var text: String
    var imageName: String
    var body: some View {
        ZStack {
            HStack() {
                Image(systemName: imageName)
                    
                TextField(placeholder, text: $text)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                
            }
            .frame(width: 300, height: 60)
            .padding(.horizontal)
            .background(Color("Primary"))
            .cornerRadius(10)
        }
    }
}

struct EmailTextField_Previews: PreviewProvider {
    static var previews: some View {
        EmailTextField(placeholder: "Email", text: .constant(""), imageName: "envelope")
    }
}
