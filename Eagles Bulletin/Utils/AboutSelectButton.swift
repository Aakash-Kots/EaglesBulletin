//
//  AboutSelectButton.swift
//  Eagles Bulletin
//
//  Created by Aakash Kothari on 18/08/22.
//

import SwiftUI

struct AboutSelectButton: View {
    var position: String
    var color: Color = Color("Primary")
    var textColor: Color = Color.white
    var body: some View {
        ZStack {
            color
                
            Text(position)
                .font(.headline.bold())
                .foregroundColor(textColor.opacity(0.8))
        }
        .frame(width: 140, height: 30)
        .cornerRadius(20)
        
    }
}

struct AboutSelectButton_Previews: PreviewProvider {
    static var previews: some View {
        AboutSelectButton(position: "Founders")
    }
}
