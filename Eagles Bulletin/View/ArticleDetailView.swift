//
//  ArticleDetailView.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 17/08/22.
//

import SwiftUI

struct ArticleDetailView: View {
    var article: Article
    
    
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20){
                    
                    VStack(spacing: 5) {
                        HStack(spacing: 20) {
                            Text(article.title).bold()
                                .font(.largeTitle)
                                .foregroundColor(.cyan.opacity(0.8))
                            
                            Image(article.category.rawValue)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                            Spacer()
                        }
                        HStack {
                            Text(article.authorName).bold()
                                .font(.headline)
                                .foregroundColor(.gray.opacity(0.6))
                            Spacer()
                        }
                        Spacer()
                        Divider()
                            .background(.white)
                    }
                    
                    
                    
                    
                    // Main Part of article
                    
                    VStack(alignment: .leading, spacing: 20) {
                       
                        
                        Text(article.description)
                            .font(.body)
                            .foregroundColor(.white.opacity(0.5))
                            
                        
                        
                        Text(article.body).font(.body.bold())
                            .foregroundColor(.white.opacity(0.8))
                    }
                }
                .padding()
            }
            
            
        }
    }
}

struct ArticleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleDetailView(article: Article(title: "Test title", description: "Hello world my name is aakash kothari and in this article I have written a test body and test description blah blah blah blah. ", body: "Test body", authorName: "Aakash Kothari", category: .music))
    }
}
