//
//  LoginView.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 08/08/22.
//

import SwiftUI

struct LoginView: View {
    @State var password: String = ""
    @State var email: String = ""
    @State var signUp: Bool = false
    var body: some View {
        NavigationView {
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
                            Text("Welcome Back!")
                                .font(.system(size: 25).bold())
                            .foregroundColor(.black)
                            Spacer()
                        }
                            
                        
                        
                        VStack(spacing: 34) {
                            
                            EmailTextField(placeholder: "Email", text: $email, imageName: "envelope")
                            
                            
                            SecureTextField(placeholder: "Password", text: $password, imageName: "lock")
                            NavigationLink() {
                                // Login the user. This should automatically take the user to the home page. Firebase functionality needed
                            } label: {
                                AuthButton(text: "Login")
                            }

                        }
                        
                       
                        
                        
                        Spacer()
                        Spacer()
                        
                        
                        
                        HStack {
                            Text("Don't have an account?")
                                
                            
                            NavigationLink("Sign Up!") {
                                SignupView()
                            }

                        }

                        
                    }
                    
                }
                .padding()
            }
            .navigationBarHidden(true)
            
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(password: "", email: "")
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
