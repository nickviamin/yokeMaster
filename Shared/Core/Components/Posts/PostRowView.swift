//
//  PostRowView.swift
//  yokeMaster (iOS)
//
//  Created by Nick Viamin on 7/1/22.
//

import SwiftUI
import Kingfisher

struct PostRowView: View {
    let post: Post
    
    var body: some View {
        VStack (alignment: .leading){
            
            //profile image & name
            if let user = post.user {
                HStack(alignment: .top, spacing: 12) {
                    KFImage(URL(string: user.profileImageUrl))
                        .resizable()
                        .frame(width: 56, height: 56)
                        .scaledToFill()
                        .clipShape(Circle())

                    VStack (alignment: .leading, spacing: 4) {
                        if let user = post.user {
                            HStack {
                                Text(user.fullname)
                                    .font(.subheadline).bold()
                                
                                Text(user.username)
                                    .foregroundColor(.gray)
                                    .font(.caption)
                                
                                Text("4 min ago")
                                    .foregroundColor(.gray)
                                    .font(.caption)
                            }
                            Text(post.caption)
                                .font(.subheadline)
                                .multilineTextAlignment(.leading)
                        }
                    }
                }
                HStack {
                    Button {
                        //action
                    } label: {
                        Image(systemName: "bubble.left")
                            .font(.subheadline)
                    }
                    
                    Spacer()
                    
                    Button {
                        //action
                    } label: {
                        Image(systemName: "heart")
                            .font(.subheadline)
                    }
                    
                    Spacer()
                    Button {
                        //action
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                            .font(.subheadline)
                    }
                    .padding()
                    Divider()
                }
            }
        }
    }
}
/*
struct PostRowView_Previews: PreviewProvider {
    static var previews: some View {
        PostRowView()
    }
}
*/
