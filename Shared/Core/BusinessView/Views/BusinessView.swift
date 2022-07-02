//
//  BusinessView.swift
//  yokeMaster (iOS)
//
//  Created by Nick Viamin on 7/2/22.
//

import SwiftUI

struct BusinessView: View {
    
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        Button {
            authViewModel.signOut()
        } label: {
            ZStack(alignment: .bottomTrailing) {
                ZStack(alignment: .topLeading){
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width:180, height: 90)
                        .cornerRadius(10)
                    Text("Sign Out")
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                }
            }
        }
    }
}

struct BusinessView_Previews: PreviewProvider {
    static var previews: some View {
        BusinessView()
    }
}
