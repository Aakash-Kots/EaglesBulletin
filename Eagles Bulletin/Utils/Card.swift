//
//  Card.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 09/08/22.
//

import SwiftUI

struct Card: View {
    
    var article: Article
    
    var backgroundColor: Color
    
    var body: some View {
        ZStack {
            
            
            
            
            LinearGradient(colors: [backgroundColor, backgroundColor.opacity(0.6)], startPoint: .topLeading, endPoint: .bottomTrailing)
                
                
            
            
                
            
            VStack {
                HStack {
                    Image(article.category.rawValue)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        
                    Spacer()
                }
                Text(article.title)
                    .font(.headline)
                        .foregroundColor(Color("Background"))
                 
                Spacer()
                NavigationLink() {
                    ArticleDetailView(article: article)
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
        Card(article: Article(title: "Zyzz Legacy", description: "Zyzz amazing", body: "Zyzz body", authorName: "Aakash Kothari", category: .music), backgroundColor: .cyan.opacity(0.8))
    }
}
