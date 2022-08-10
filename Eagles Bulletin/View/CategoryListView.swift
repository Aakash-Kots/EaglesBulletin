//
//  CategoryListView.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 10/08/22.
//

import SwiftUI

struct CategoryListView: View {
    var categoryName: String
    
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                VStack(spacing:37) {
                    
                    HStack {
                        Text(categoryName)
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.black)
                        Image(categoryName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 49, height: 49)
                        
                        Spacer()
                    }
                    
                    
                    ForEach(0...20, id: \.self) { _ in
                        
                        Button {
                            print("Article Tapped")
                        } label: {
                            ArticleListItem(title: "Test Title", description: "Test Description")
                        }

                        
                    }
                    
                
                    
                    
                    
                        
                    Spacer()
                }
                .padding()
            }
            
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CategoryListView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListView(categoryName: "Politics")
    }
}
