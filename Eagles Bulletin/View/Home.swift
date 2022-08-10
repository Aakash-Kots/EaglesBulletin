//
//  Home.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 09/08/22.
//

import SwiftUI

struct Home: View {
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
                                Button {
                                    print("Category Pressed")
                                } label: {
                                    Category(imageName: "Politics")
                                }

                                
                                Spacer()
                                NavigationLink {
                                    CategoryListView(categoryName: "Sports")
                                } label: {
                                    Category(imageName: "Sports")
                                }

                                Spacer()
                                NavigationLink {
                                    CategoryListView(categoryName: "Politics")
                                } label: {
                                    Category(imageName: "Politics")
                                }

                                Spacer()
                                
                            }
                            HStack(alignment: .center) {
                                Spacer()
                                Button {
                                    print("Category Pressed")
                                } label: {
                                    Category(imageName: "Politics")
                                }

                                Spacer()
                                Button {
                                    print("Category Pressed")
                                } label: {
                                    Category(imageName: "Sports")
                                }

                                Spacer()
                                Button {
                                    print("Category Pressed")
                                } label: {
                                    Category(imageName: "Politics")
                                }

                                Spacer()
                                
                                
                            }
                        }
                        .padding()
                        
                        
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
