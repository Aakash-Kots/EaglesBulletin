//
//  AddArticleView.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 19/08/22.
//

import SwiftUI

struct AddArticleView: View {
    @State var title: String = ""
    @State var description: String = ""
    @State var author: String = ""
    @State var category: String = "Music"
    @State var dateAdded: Date = Date.now
    var categories: [String] = ["Music", "Art", "Sports"]
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    
                    Text("Add an article!")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white.opacity(0.6))
                    
                   
                    VStack(alignment: .leading, spacing: 30) {
                        TextField("Name", text: $title)
                            .padding(10)
                            .background(Color("Primary"))
                            .cornerRadius(10)
                            
                        TextField("Description", text: $description)
                            .padding(10)
                            .background(Color("Primary"))
                            .cornerRadius(10)
                            
                        TextField("Author Name", text: $author)
                            .padding(10)
                            .background(Color("Primary"))
                            .cornerRadius(10)
                        HStack {
                            
                            Picker("Category", selection: $category) {
                                ForEach(categories, id: \.self) { category in
                                    Text(category)
                                        
                                }
                            }
                            .padding(5)
                            .background(Color("Primary"))
                            .cornerRadius(10)
                            
                            DatePicker("", selection: $dateAdded)
                        }
                        
                    }
                    .padding(.horizontal, 10)
                    
                   
                    
                    
                    
                }
                .padding()
            }
        }
    }
}

struct AddArticleView_Previews: PreviewProvider {
    static var previews: some View {
        AddArticleView()
    }
}
