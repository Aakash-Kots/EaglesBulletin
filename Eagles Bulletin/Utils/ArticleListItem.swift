//
//  ArticleListItem.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 10/08/22.
//

import SwiftUI

struct ArticleListItem: View {
    var title: String
    var description: String

    var body: some View {
        ZStack {
            Color("Primary")
                .ignoresSafeArea()
            
        }
        .frame(width: 333, height: 118)
        .cornerRadius(20)
        
    }
}

struct ArticleListItem_Previews: PreviewProvider {
    static var previews: some View {
        ArticleListItem(title: "Test Title", description: "Test Description")
    }
}
