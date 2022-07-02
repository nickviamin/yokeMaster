//
//  UploadPostViewModel.swift
//  yokeMaster (iOS)
//
//  Created by Nick Viamin on 7/1/22.
//

import Foundation

class UploadPostViewModel: ObservableObject {
    @Published var didUploadPost = false
    
    let service = PostService()
    
    func uploadPost(withCaption caption: String) {
        service.uploadPost(caption: caption) { success in
            if success {
                self.didUploadPost = true
            } else {
                
            }
        }
    }
}
