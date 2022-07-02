//
//  ClassStackView.swift
//  yokeMaster (iOS)
//
//  Created by Nick Viamin on 7/1/22.
//

import SwiftUI

struct ClassStackView: View {
    
    @State private var showMapView = false
    @Environment(\.presentationMode) var mode
    
    
    var body: some View {
        ScrollView() {
            VStack(alignment: .leading){
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.black)
                        .offset(x: 16, y: -4)
                }
                VStack(alignment: .leading) {
                    Text("Popular near you")
                        .bold()
                    
                    HStack {
                        Button {
                            showMapView.toggle()
                        } label: {
                            ZStack(alignment: .bottomTrailing) {
                                ZStack(alignment: .topLeading){
                                    Rectangle()
                                        .fill(Color.pink)
                                        .frame(width:180, height: 90)
                                        .cornerRadius(10)
                                    Text("Yoga")
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("yogapic")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .clipped()
                                    .cornerRadius(10)
                            }
                        }
                        
                        Button {
                            showMapView.toggle()
                        } label: {
                            ZStack(alignment: .bottomTrailing) {
                                ZStack(alignment: .topLeading){
                                    Rectangle()
                                        .fill(Color.purple)
                                        .frame(width:180, height: 90)
                                        .cornerRadius(10)
                                    Text("Cycling")
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("cyclingpic")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .clipped()
                                    .cornerRadius(10)
                            }
                        }
                    }
                    
                    
                }
                VStack(alignment: .leading) {
                    Text("Featured workouts")
                        .bold()
                    
                    HStack {
                        Button {
                            showMapView.toggle()
                        } label: {
                            ZStack(alignment: .bottomTrailing) {
                                ZStack(alignment: .topLeading){
                                    Rectangle()
                                        .fill(Color.blue)
                                        .frame(width:180, height: 90)
                                        .cornerRadius(10)
                                    Text("Boxing")
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("boxingpic")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .clipped()
                                    .cornerRadius(10)
                            }
                        }
                        
                        Button {
                            showMapView.toggle()
                        } label: {
                            ZStack (alignment: .bottomTrailing){
                                ZStack(alignment: .topLeading){
                                    Rectangle()
                                        .fill(Color.red)
                                        .frame(width:180, height: 90)
                                        .cornerRadius(10)
                                    Text("HIIT")
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("hiitpic")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .clipped()
                                    .cornerRadius(10)
                            }
                        }
                    }
                    
                    
                }
                VStack(alignment: .leading) {
                    Text("Browse all")
                        .bold()
                    
                    HStack {
                        Button {
                            showMapView.toggle()
                        } label: {
                            ZStack (alignment: .bottomTrailing) {
                                ZStack(alignment: .topLeading){
                                    Rectangle()
                                        .fill(Color.orange)
                                        .frame(width:180, height: 90)
                                        .cornerRadius(10)
                                    Text("Pilates")
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("pilates pic")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .clipped()
                                    .cornerRadius(10)
                            }
                        }
                        
                        Button {
                            showMapView.toggle()
                        } label: {
                            ZStack(alignment: .bottomTrailing) {
                                ZStack(alignment: .topLeading){
                                    Rectangle()
                                        .fill(Color.cyan)
                                        .frame(width:180, height: 90)
                                        .cornerRadius(10)
                                    Text("Dance")
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("dancingpic")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .clipped()
                                    .cornerRadius(10)
                            }
                        }
                    }
                    HStack {
                        Button {
                            showMapView.toggle()
                        } label: {
                            ZStack(alignment: .bottomTrailing){
                                ZStack(alignment: .topLeading){
                                    Rectangle()
                                        .fill(Color.indigo)
                                        .frame(width:180, height: 90)
                                        .cornerRadius(10)
                                    Text("Massage")
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("massagepic")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .clipped()
                                    .cornerRadius(10)
                            }
                        }
                        
                        Button {
                            showMapView.toggle()
                        } label: {
                            ZStack(alignment: .bottomTrailing) {
                                ZStack(alignment: .topLeading){
                                    Rectangle()
                                        .fill(Color.mint)
                                        .frame(width:180, height: 90)
                                        .cornerRadius(10)
                                    Text("Facial")
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("facialpic")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .clipped()
                                    .cornerRadius(10)
                            }
                        }
                    }
                    HStack {
                        Button {
                            showMapView.toggle()
                        } label: {
                            ZStack(alignment: .bottomTrailing){
                                ZStack(alignment: .topLeading){
                                    Rectangle()
                                        .fill(Color.yellow)
                                        .frame(width:180, height: 90)
                                        .cornerRadius(10)
                                    Text("Bootcamp")
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("bootcamppic")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .clipped()
                                    .cornerRadius(10)
                            }
                        }
                        
                        Button {
                            showMapView.toggle()
                        } label: {
                            ZStack(alignment: .bottomTrailing) {
                                ZStack(alignment: .topLeading){
                                    Rectangle()
                                        .fill(Color.gray)
                                        .frame(width:180, height: 90)
                                        .cornerRadius(10)
                                    Text("Gym Time")
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("gympic")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .clipped()
                                    .cornerRadius(10)
                            }
                        }
                    }
                    HStack {
                        Button {
                            showMapView.toggle()
                        } label: {
                            ZStack(alignment: .bottomTrailing) {
                                ZStack(alignment: .topLeading){
                                    Rectangle()
                                        .fill(Color.orange)
                                        .frame(width:180, height: 90)
                                        .cornerRadius(10)
                                    Text("Nails")
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("nailspic")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .clipped()
                                    .cornerRadius(10)
                            }
                        }
                        
                        Button {
                            showMapView.toggle()
                        } label: {
                            ZStack(alignment: .bottomTrailing) {
                                ZStack(alignment: .topLeading){
                                    Rectangle()
                                        .fill(Color.purple)
                                        .frame(width:180, height: 90)
                                        .cornerRadius(10)
                                    Text("Sauna")
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("saunapic")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .clipped()
                                    .cornerRadius(10)
                            }
                        }
                    }
                    HStack {
                        Button {
                            showMapView.toggle()
                        } label: {
                            ZStack(alignment: .bottomTrailing) {
                                ZStack(alignment: .topLeading){
                                    Rectangle()
                                        .fill(Color.pink)
                                        .frame(width:180, height: 90)
                                        .cornerRadius(10)
                                    Text("Cryotherapy")
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("cryopic")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .clipped()
                                    .cornerRadius(10)
                            }
                        }
                        
                        Button {
                            showMapView.toggle()
                        } label: {
                            ZStack(alignment: .bottomTrailing){
                                ZStack(alignment: .topLeading){
                                    Rectangle()
                                        .fill(Color.blue)
                                        .frame(width:180, height: 90)
                                        .cornerRadius(10)
                                    Text("Running")
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("runningpic")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .clipped()
                                    .cornerRadius(10)
                            }
                        }
                    }
                    HStack {
                        Button {
                            showMapView.toggle()
                        } label: {
                            ZStack(alignment: .bottomTrailing) {
                                ZStack(alignment: .topLeading){
                                    Rectangle()
                                        .fill(Color.red)
                                        .frame(width:180, height: 90)
                                        .cornerRadius(10)
                                    Text("Outdoors")
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("outdoorspic")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .clipped()
                                    .cornerRadius(10)
                            }
                        }
                        Button {
                            showMapView.toggle()
                        } label: {
                            ZStack(alignment: .bottomTrailing) {
                                ZStack(alignment: .topLeading){
                                    Rectangle()
                                        .fill(Color.cyan)
                                        .frame(width:180, height: 90)
                                        .cornerRadius(10)
                                    Text("Rowing")
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("rowingpic")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .clipped()
                                    .cornerRadius(10)
                            }

                        }
                    }
                    HStack {
                        Button {
                            showMapView.toggle()
                        } label: {
                            ZStack(alignment: .bottomTrailing) {
                                ZStack(alignment: .topLeading){
                                    Rectangle()
                                        .fill(Color.indigo)
                                        .frame(width:180, height: 90)
                                        .cornerRadius(10)
                                    Text("Kickball")
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("kickballpic")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .clipped()
                                    .cornerRadius(10)
                            }
                        }
                        
                        Button {
                            showMapView.toggle()
                        } label: {
                            ZStack(alignment: .bottomTrailing) {
                                ZStack(alignment: .topLeading){
                                    Rectangle()
                                        .fill(Color.orange)
                                        .frame(width:180, height: 90)
                                        .cornerRadius(10)
                                    Text("Spa Treatment")
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("spapic")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .clipped()
                                    .cornerRadius(10)
                            }
                        }
                    }
                    HStack {
                        Button {
                            showMapView.toggle()
                        } label: {
                            ZStack(alignment: .bottomTrailing) {
                                ZStack(alignment: .topLeading){
                                    Rectangle()
                                        .fill(Color.blue)
                                        .frame(width:180, height: 90)
                                        .cornerRadius(10)
                                    Text("Martial Arts")
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("karatepic")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .clipped()
                                    .cornerRadius(10)
                            }
                        }
                        
                        Button {
                            showMapView.toggle()
                        } label: {
                            ZStack(alignment: .bottomTrailing) {
                                ZStack(alignment: .topLeading){
                                    Rectangle()
                                        .fill(Color.yellow)
                                        .frame(width:180, height: 90)
                                        .cornerRadius(10)
                                    Text("Meditation")
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding()
                                }
                                Image("meditationpic")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 56, height: 56)
                                    .clipped()
                                    .cornerRadius(10)
                            }
                        }
                    }
                }
            }
            .fullScreenCover(isPresented: $showMapView) {
                MapView()
            }
        }
        .navigationBarHidden(true)
    }
}

struct ClassStackView_Previews: PreviewProvider {
    static var previews: some View {
        ClassStackView()
    }
}
