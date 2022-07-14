//
//  Message.swift
//  yokeMaster (iOS)
//
//  Created by Nick Viamin on 7/13/22.
//

import FirebaseFirestoreSwift
import Firebase

struct Message: Identifiable, Decodable {
    @DocumentID var id: String?
    let message: String
    let timestamp: Timestamp
    let uid: String
    
    var user: User?
}
