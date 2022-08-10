//
//  Category.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 09/08/22.
//

import SwiftUI

struct Category: View {
    
    var imageName: String
    var body: some View {
        ZStack {
            Color("Primary")
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 49, height: 49)
        }
        .frame(width: 80, height: 75)
        .cornerRadius(15)
        
    }
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        Category(imageName: "lock")
    }
}
