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
    @EnvironmentObject var authViewModel: AuthViewModel
    var body: some View {
        
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 60) {
                    
                    HStack {
                        Text("The Eagle's Bulletin")
                            .font(.system(size: 34)).bold()
                            .foregroundColor(Color.cyan.opacity(0.8))
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
                            .foregroundColor(.gray.opacity(0.7))
                        Spacer()
                    }
                    
                   
                    
                    VStack(spacing: 34) {
                        
                        EmailTextField(placeholder: "Email", text: $email, imageName: "envelope")
                        
                        
                        SecureTextField(placeholder: "Password", text: $password, imageName: "lock")
                        Button {
                            authViewModel.signUp(withEmail: email, password: password)
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
