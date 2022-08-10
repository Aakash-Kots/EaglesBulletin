//
//  SignupView.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 09/08/22.
//

import SwiftUI

struct SignupView: View {
    @State var email: String = ""
    @State var password: String = ""
    @Environment(\.presentationMode) var mode
    var body: some View {
        
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 60) {
                    
                    HStack {
                        Text("The Eagle's Bulletin")
                            .font(.system(size: 34)).bold()
                            .foregroundColor(Color(hex: "093d17"))
                        Spacer()
                        Image("Logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 110, height: 110)
                            .foregroundColor(.black)
                        
                    }
                    HStack {
                        Text("Welcome!")
                            .font(.system(size: 25).bold())
                            .foregroundColor(.black)
                        Spacer()
                    }
                    
                   
                    
                    VStack(spacing: 34) {
                        
                        EmailTextField(placeholder: "Email", text: $email, imageName: "envelope")
                        
                        
                        SecureTextField(placeholder: "Password", text: $password, imageName: "lock")
                        Button {
                            print("Login")
                        } label: {
                            AuthButton(text: "Sign Up")
                        }
                        
                    }
                    
                    Spacer()
                    Spacer()
                    
                 
                    
                    
                    HStack {
                        Text("Already have an account?")
                        
                        
                        Button {
                            mode.wrappedValue.dismiss()
                        } label: {
                            Text("Login")
                        }
                        
                        
                    }
                    
                }
                
            }
            .padding()
            
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        
        
        
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
            .previewInterfaceOrientation(.portrait)
    }
}
