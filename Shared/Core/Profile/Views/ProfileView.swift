//
//  ProfileView.swift
//  yokeMaster (iOS)
//
//  Created by Nick Viamin on 7/1/22.
//

import SwiftUI
import Kingfisher

struct ProfileView: View {
    @State private var selectedFilter: PostFilterViewModel = .upcomingClasses
    @ObservedObject var viewModel: ProfileViewModel
    @Environment(\.presentationMode) var mode
    @Namespace var animation
    
    init(user: User) {
        self.viewModel = ProfileViewModel(user: user)
    }
    
    var body: some View {
        VStack(alignment: .leading){
            headerView
            
            actionButtons
            
            userInfoDetails
            
            postFilterBar
            
            postsView
            
            Spacer()
        }
        .navigationBarHidden(true)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User(id: NSUUID().uuidString,
                    username: "nickviamin",
                    fullname: "Nick Viamin",
                    profileImageUrl: "",
                    email: "nickviamin@gmail.com"))
    }
}

extension ProfileView {
        
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemOrange)
                .ignoresSafeArea()
            
            VStack {
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(x: 16, y: -4)
                }
                
                KFImage(URL(string: viewModel.user.profileImageUrl))
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 72, height: 72)
                    .offset(x: 16, y: 24)
            }
        }
        .frame(height: 96)
    }
    
    var actionButtons: some View {
        HStack(spacing: 12){
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            
            Button {
                
            } label: {
                Text(viewModel.actionButtonTitle)
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 64)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }
        }
        .padding(.trailing)
    }


    var userInfoDetails: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text(viewModel.user.fullname)
                    .font(.title2).bold()
                
            }
            
            Text("@\(viewModel.user.username)")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            HStack {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    
                    Text("San Francisco, CA")
                }
                
                //add new action buttons here
            }
            .font(.caption)
            .foregroundColor(Color.gray)
            
            UserStatView()
            
            .padding(.vertical)
            
        }
        .padding(.horizontal)
    }

    
    var postFilterBar: some View {
        
        HStack {
            ForEach(PostFilterViewModel.allCases, id: \.rawValue) { item in
                VStack {
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                        .foregroundColor(selectedFilter == item ? .black : .gray)
                    if selectedFilter == item {
                        Capsule()
                            .foregroundColor(Color(.systemOrange))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    } else {
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height: 3)
                            //.matchedGeometryEffect(id: "filter", in: animation) dont know why this doesnt work come back later
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.selectedFilter = item
                    }
                }
            }
        }
        .overlay(Divider().offset(x: 0, y: 16))
    }
    
    var postsView: some View {
        
        ScrollView {
            LazyVStack {
                ForEach(viewModel.posts) { post in
                    PostRowView(post: post)
                       .padding()
                }
            }
        }
    }
}


