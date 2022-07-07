//
//  CustomClassView.swift
//  yokeMaster (iOS)
//
//  Created by Nick Viamin on 7/6/22.
//

import SwiftUI

struct CustomClassView: View {
    let imageName: String
    let name: String
    let color: UIColor
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ZStack(alignment: .topLeading){
                Rectangle()
                    .fill(SwiftUI.Color(color))
                    .frame(width:180, height: 90)
                    .cornerRadius(10)
                Text(name)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
            }
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 56, height: 56)
                .clipped()
                .cornerRadius(10)
        }

    }

}
