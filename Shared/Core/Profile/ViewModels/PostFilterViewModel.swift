//
//  PostFilterViewModel.swift
//  yokeMaster (iOS)
//
//  Created by Nick Viamin on 7/2/22.
//

import Foundation

enum PostFilterViewModel: Int, CaseIterable {
    case upcomingClasses
    case classesTaken
    
    var title: String {
        switch self {
        case .upcomingClasses: return "Upcoming Classes"
        case .classesTaken: return "Classes Taken"
        }
    }
}
