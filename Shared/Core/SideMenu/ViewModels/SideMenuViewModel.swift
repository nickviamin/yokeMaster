//
//  SideMenuViewModel.swift
//  yokeMaster (iOS)
//
//  Created by Nick Viamin on 7/1/22.
//

import Foundation
import SystemConfiguration

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case classes
    case logout
    
    var title: String {
        switch self {
        case .profile: return "Profile"
        case .classes: return "Classes"
        case .logout: return "Logout"
        }
    }
    
    var imageName: String {
        switch self {
        case .profile: return "person"
        case .classes: return "list.bullet"
        case .logout: return "arrow.left.square"
        }
    }
}
