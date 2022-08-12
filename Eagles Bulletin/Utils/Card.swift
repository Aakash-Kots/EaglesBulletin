//
//  Card.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 09/08/22.
//

import SwiftUI

struct Card: View {
    
    var title: String
    var description: String
    var imageName: String
    
    var body: some View {
        ZStack {
            
            
            
            
            Color("Primary")
                .opacity(0.7)
                
            
            
                
            
            VStack {
                HStack {
                    Text(title)
                        .font(.largeTitle.bold())
                        .foregroundColor(.black)
                    
                    Image(systemName: imageName)
                        .font(.largeTitle)
                        .foregroundColor(.black)
                }
                Spacer()
                
                Text(description)
                    .font(.body)
                    .foregroundColor(.black)
                
                Spacer()
                
            }
            .padding()
        }
        .frame(width: 200, height: 300)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.15), radius: 5)
        
        
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(title: "Zyzz Legacy", description: "This is the legacy of zyzz", imageName: "person")
    }
}
