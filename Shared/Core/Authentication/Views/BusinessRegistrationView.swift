//
//  BusinessRegistrationView.swift
//  yokeMaster (iOS)
//
//  Created by Nick Viamin on 7/2/22.
//

import SwiftUI

struct BusinessRegistrationView: View {
    
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
            AuthHeaderView(title1: "Get Started", title2: "Create Your Yoke Business Account")
            VStack(spacing: 40) {
                
                CustomInputField(imageName: "envelope", placeholderText: "Business email", text: $email)
                
                CustomInputField(imageName: "person", placeholderText: "Business name", text: $username)
                
                CustomInputField(imageName: "person", placeholderText: "Full name of registrant", text: $fullname)
                
                VStack {
                    HStack {
                        Image(systemName: "lock")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color(.darkGray))
                        
                        SecureField("Password", text: $password)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    }
                    Divider()
                        .background(Color(.darkGray))
                }
            }
            .padding(32)
            
            Button {
                viewModel.registerBusiness(withEmail: email,
                                   password: password,
                                   fullname: fullname,
                                   username: username)
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                        .font(.footnote)
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
        }
        .ignoresSafeArea()
    }
}


struct BusinessRegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        BusinessRegistrationView()
    }
}
