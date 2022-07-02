//
//  UserStatView.swift
//  yokeMaster (iOS)
//
//  Created by Nick Viamin on 7/1/22.
//

import SwiftUI

struct UserStatView: View {
    var body: some View {
        HStack {
            HStack(spacing: 4) {
                Text("135")
                    .font(.subheadline)
                    .bold()
                
                Text("Friends")
                    .font(.caption)
                    .foregroundColor(Color.gray)
            }
        }
    }
}

struct UserStatView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatView()
    }
}

