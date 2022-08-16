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
    var category: ArticleCategory
    var backgroundColor: Color
    
    var body: some View {
        ZStack {
            
            
            
            
            backgroundColor
                
                
            
            
                
            
            VStack {
                HStack {
                    Image(category.rawValue)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        
                    Spacer()
                }
                    Text(title)
                    .font(.headline)
                        .foregroundColor(Color("Background"))
                 
                Spacer()
                NavigationLink() {
                    CategoryListView(categoryName: category.rawValue)
                } label: {
                    Text("Read More")
                        .frame(width: 100, height: 30)
                        .foregroundColor(.white)
                        .background(Color("Background"))
                        .cornerRadius(5)
                }
                
                
            }
            .padding()
        }
        .frame(width: 130, height: 200)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.15), radius: 10)
        
        
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(title: "Zyzz Legacy", description: "This is the legacy of zyzz", category: .music, backgroundColor: Color.cyan.opacity(0.7))
    }
}
