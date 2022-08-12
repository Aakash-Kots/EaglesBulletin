//
//  Home.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 09/08/22.
//

import SwiftUI

struct Home: View {
    
    var categories1: [Category] = [ Category(imageName: "Politics"), Category(imageName: "Sports"), Category(imageName: "Music")]
    var categories2 : [Category] = [Category(imageName: "Food"), Category(imageName: "Art"),Category(imageName: "Health")]
    
    var body: some View {
        
        NavigationView {
            ZStack {
                    Color("Background")
                        .ignoresSafeArea()
                    
                    ScrollView(showsIndicators: false) {
                        VStack {
                            HStack {
                                Text("Recents")
                                    .font(.largeTitle.bold())
                                    .foregroundColor(.black)
                                Spacer()
                            }
                            .padding()
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 32) {
                                    Spacer()
                                    Button {
                                        print("Recents pressd")
                                    } label: {
                                        Card(title: "Test", description: "Test", imageName: "person")
                                    }

                                    
                                    Button {
                                        print("Recents pressed")
                                    } label: {
                                        Card(title: "Test", description: "Test", imageName: "person")
                                    }
                                    Button {
                                        print("Recents pressed")
                                    } label: {
                                        Card(title: "Test", description: "Test", imageName: "person")
                                    }

                                    Spacer()
                                }
                                .padding(.vertical)
                            }
                            
                            // Categories
                            
                            
                            VStack(alignment: .leading, spacing: 40) {
                                Text("Categories")
                                    .font(.largeTitle.bold())
                                    .foregroundColor(.black)
                                
                                HStack(alignment: .center) {
                                    Spacer()
                                    ForEach(categories1, id: \.imageName) { category in
                                        Spacer()
                                        NavigationLink() {
                                            CategoryListView(categoryName: category.imageName)
                                        } label: {
                                            category
                                        }
                                        Spacer()
                                    }

                                    Spacer()
                                    
                                }
                                HStack(alignment: .center) {
                                    Spacer()
                                    ForEach(categories2, id: \.imageName) { category in
                                        Spacer()
                                        NavigationLink() {
                                            CategoryListView(categoryName: category.imageName)
                                        } label: {
                                            category
                                        }
                                        Spacer()
                                    }
                                    Spacer()
                                    
                                    
                                }
                            }
                            .padding()
                            
                            
                        }
                    }
                    
                }
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
