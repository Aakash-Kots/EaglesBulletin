//
//  TeamMemberCard.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 18/08/22.
//

import SwiftUI

struct TeamMemberCard: View {
    var position: String
    var fullName: String
    var age: Int
    var grade: Int
    var about: String
    var contact: String
    var body: some View {
        ZStack {
            Color("Primary")
            
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    
                    Text(fullName)
                        .font(.largeTitle.bold())
                        .foregroundColor(.cyan.opacity(0.8))
                   
                    
                    
                    VStack(alignment: .leading, spacing: 10) {
                        VStack(alignment: .leading) {
                            HStack(spacing: 2) {
                                Text("\(age) years old,")
                                Text("\(grade)th grade")
                            }
                            .font(.subheadline)
                            .foregroundColor(.gray.opacity(0.8))
                            Text(contact)
                                .foregroundColor(.gray.opacity(0.8))
                                .italic()
                                .font(.subheadline)
                        }
                        
                        Text("\(about)")
                    }
                    
                   
                }
                .padding()
                
                Spacer()
            }
        }
//        .frame(width: .infinity)
        .cornerRadius(20)
//        .shadow(color: .black.opacity(0.10), radius: 20)
        
    }
}

struct TeamMemberCard_Previews: PreviewProvider {
    static var previews: some View {
        TeamMemberCard(position: "Editor", fullName: "Aakash Kothari", age: 17, grade: 12, about: "I enjoy computer science", contact: "kots.aakash@gmail.com")
    }
}
