//
//  yokeMasterApp.swift
//  Shared
//
//  Created by Nick Viamin on 7/1/22.
//

import SwiftUI
import Firebase

@main
struct yokeMasterApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(viewModel)
        }
    }
}
