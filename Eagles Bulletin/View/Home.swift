//
//  Home.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 09/08/22.
//

import SwiftUI

struct Home: View {
    var dummyDescription: String = """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ac odio ac turpis fermentum tempus a ut est. Nunc eget laoreet libero, ut cursus dui. Mauris ut lacus mauris. In sodales lacus vehicula arcu condimentum, gravida consectetur nisi efficitur.
    """
    
    var dummyBody: String = """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ac odio ac turpis fermentum tempus a ut est. Nunc eget laoreet libero, ut cursus dui. Mauris ut lacus mauris. In sodales lacus vehicula arcu condimentum, gravida consectetur nisi efficitur.
    """
    var categories1: [Category] = [ Category(imageName: "Politics"), Category(imageName: "Sports"), Category(imageName: "Music")]
    var categories2 : [Category] = [Category(imageName: "Food"), Category(imageName: "Art"),Category(imageName: "Health")]
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                    
                
                ScrollView(showsIndicators: false) {
                    VStack {
                        
                        
                        // Title with subtitle
                        
                        VStack(spacing: 10) {
                            HStack {
                                Text("Welcome to Eagle's Bulletin!")
                                    .bold()
                                    .font(.largeTitle)
                                    .foregroundColor(.white.opacity(0.8))
                                Spacer()
                                
                                VStack {
                                    Button {
                                        authViewModel.signOut()
                                    } label: {
                                        Image(systemName: "rectangle.portrait.and.arrow.right")
                                    }
                                    Spacer() 
                                    Image("Logo")
                                        .resizable()
                                        .scaledToFit()
                                    .frame(width: 50, height: 50)
                                }
                            }
                            
                            HStack {
                                Text("Articles and more!")
                                    .bold()
                                    .font(.title3)
                                    .foregroundColor(Color.gray.opacity(0.5))
                                
                                Spacer()
                            }
                        }
                        .padding()
                        
                        HStack {
                            Text("Recents")
                                .font(.title.bold())
                                .foregroundColor(.white.opacity(0.5))
                            
                            Spacer()
                            Text("4 articles")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .bold()
                        }
                        .padding()
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                Spacer()
                                
                                Card(article: Article(title: "Test article", description: dummyDescription, body:dummyBody, authorName: "Aakash Kothari", category: .music), backgroundColor: Color.cyan.opacity(0.7))
                                
                                Card(article: Article(title: "Test article", description: dummyDescription, body: dummyBody, authorName: "Aakash Kothari", category: .music), backgroundColor: Color.purple.opacity(0.7))
                                
                                Card(article: Article(title: "Test article", description: dummyDescription, body: dummyBody, authorName: "Aakash Kothari", category: .music), backgroundColor: Color.orange.opacity(0.7))
                                
                                Card(article: Article(title: "Test article", description: dummyDescription, body: dummyBody, authorName: "Aakash Kothari", category: .music), backgroundColor: Color.green.opacity(0.7))
                                
                                
                                
//                                Card(title: "Test", description: "Test", category: .politics,backgroundColor: Color.green.opacity(0.7))
                              
                                
                                Spacer()
                            }
                            .padding(.vertical)
                        }
                        
                        
                       
//                        VStack {
//                            HStack {
//                                Text("Our Team Members!")
//                                    .font(.title3.bold())
//                                    .foregroundColor(.white.opacity(0.8))
//                                Spacer()
//                            }
//                            .padding()
//
//                            ScrollView(.horizontal, showsIndicators: false) {
//                                HStack {
//                                    Text("Sheen Gupta")
//                                        .frame(width: 120, height: 30)
//                                        .background(Color("Primary"))
//                                        .cornerRadius(20)
//                                    Text("Sheen Gupta")
//                                        .frame(width: 120, height: 30)
//                                        .background(Color("Primary"))
//                                        .cornerRadius(20)
//                                    Text("Sheen Gupta")
//                                        .frame(width: 120, height: 30)
//                                        .background(Color("Primary"))
//                                        .cornerRadius(20)
//                                    Text("Sheen Gupta")
//                                        .frame(width: 120, height: 30)
//                                        .background(Color("Primary"))
//                                        .cornerRadius(20)
//                                    Text("Sheen Gupta")
//                                        .frame(width: 120, height: 30)
//                                        .background(Color("Primary"))
//                                        .cornerRadius(20)
//                                }
//                                .padding(.horizontal)
//                            }
//                        }
                        
                        
                        // Category grid view
                        VStack(alignment: .leading, spacing: 40) {
                            Text("Categories")
                                .font(.title.bold())
                                .foregroundColor(.white.opacity(0.5))
                            
                            
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
                        
                        
                        
//
                        
                        
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
