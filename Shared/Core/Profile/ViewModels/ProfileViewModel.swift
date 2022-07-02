//
//  ProfileViewModel.swift
//  yokeMaster (iOS)
//
//  Created by Nick Viamin on 7/1/22.
//

import Foundation

class ProfileViewModel: ObservableObject {
    @Published var posts = [Post]()
    private let service = PostService()
    let user: User
    
    init(user: User) {
        self.user = user
        self.fetchUserPosts()
    }
    
    var actionButtonTitle: String {
        return user.isCurrentUser ? "Edit Profile" : "Add to your Circle"
    }
    
    func fetchUserPosts(){
        guard let uid = user.id else { return }
        service.fetchPosts(forUID: uid) { posts in
            self.posts = posts
            for i in 0 ..< posts.count {
                self.posts[i].user = self.user
            }
        }
    }
}
