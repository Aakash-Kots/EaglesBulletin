//
//  About.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 18/08/22.
//

import SwiftUI

struct About: View {
    var positions: [String] = ["Founder", "Editor", "Designer", "Writer"]
    @State private var selected: Int = 0
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 10) {
                    HStack {
                        Text("Meet our team!")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white.opacity(0.8))
                            
                        Spacer()
                    }
                    
                    VStack {
                        HStack {
                            Text("Select the position below:")
                                .font(.subheadline)
                                .foregroundColor(.gray.opacity(0.8))
                            Spacer()
                        }
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                
                                ForEach(0...3, id: \.self) { pos in
                                    
                                    Button {
                                       
                                        selected = pos
                                    } label: {
                                        if selected == pos {
                                            AboutSelectButton(position:positions[pos], color: Color.cyan.opacity(0.8), textColor: Color.black)
                                                .foregroundColor(.black)
                                        } else {
                                            AboutSelectButton(position:positions[pos])
                                        }
                                        
                                    }

                                    
                                }
                            }
                        }
                    }
                    Spacer()
                    VStack {
                        switch selected {
                        case 0:
                            TeamMemberCard(position:"Founder",fullName: "Sheen Gupta", age: 17, grade: 12, about: "She likes throwing stones", contact: "sheen@gupta.com")
                        case 1:
                            TeamMemberCard(position:"Editor",fullName: "Aaria Chandwani", age: 17, grade: 12, about: "I like to go crazy", contact: "aariachandwani@gmail.com")
                        case 2:
                            TeamMemberCard(position:"Designer", fullName: "Arshia Kumar", age: 17, grade: 12, about: "I am auntie", contact: "arshia@kumar.com")
                            
                        default:
                            Text("idk")
                            
                                
                        }
                    }
                   
                    
                } // End of main VStack
                .padding()
            }
           
            
        }
        
    }
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            About()
            
        }
    }
}
