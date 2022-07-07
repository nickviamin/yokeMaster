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
                            CustomClassView(imageName: "yogapic", name: "Yoga", color: .systemPink)
                        }
                        
                        Button {
                            showMapView.toggle()
                        } label: {
                            CustomClassView(imageName: "cyclingpic", name: "Cycling", color: .systemPurple)
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
                            CustomClassView(imageName: "boxingpic", name: "Boxing", color: .systemBlue)
                        }
                        
                        Button {
                            showMapView.toggle()
                        } label: {
                            CustomClassView(imageName: "hiitpic", name: "HIIT", color: .systemRed)
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
                            CustomClassView(imageName: "pilates pic", name: "Pilates", color: .systemOrange)
                        }
                        
                        Button {
                            showMapView.toggle()
                        } label: {
                            CustomClassView(imageName: "dancingpic", name: "Dance", color: .systemCyan)
                        }
                    }
                    HStack {
                        Button {
                            showMapView.toggle()
                        } label: {
                            CustomClassView(imageName: "massagepic", name: "Massage", color: .systemIndigo)
                        }
                        
                        Button {
                            showMapView.toggle()
                        } label: {
                            CustomClassView(imageName: "facialpic", name: "Facial", color: .systemMint)
                        }
                    }
                    HStack {
                        Button {
                            showMapView.toggle()
                        } label: {
                            CustomClassView(imageName: "bootcamppic", name: "Boot Camp", color: .systemYellow)
                        }
                        
                        Button {
                            showMapView.toggle()
                        } label: {
                            CustomClassView(imageName: "gympic", name: "Gym", color: .systemGray)
                        }
                    }
                    HStack {
                        Button {
                            showMapView.toggle()
                        } label: {
                            CustomClassView(imageName: "nailspic", name: "Nails", color: .systemOrange)
                        }
                        
                        Button {
                            showMapView.toggle()
                        } label: {
                            CustomClassView(imageName: "saunapic", name: "Sauna", color: .systemPurple)
                        }
                    }
                    HStack {
                        Button {
                            showMapView.toggle()
                        } label: {
                            CustomClassView(imageName: "cryopic", name: "Cryotherapy", color: .systemPink)
                        }
                        
                        Button {
                            showMapView.toggle()
                        } label: {
                            CustomClassView(imageName: "runningpic", name: "Running", color: .systemBlue)
                        }
                    }
                    HStack {
                        Button {
                            showMapView.toggle()
                        } label: {
                            CustomClassView(imageName: "outdoorspic", name: "Outdoors", color: .systemRed)
                        }
                        Button {
                            showMapView.toggle()
                        } label: {
                            CustomClassView(imageName: "rowingpic", name: "Rowing", color: .systemCyan)

                        }
                    }
                    HStack {
                        Button {
                            showMapView.toggle()
                        } label: {
                            CustomClassView(imageName: "kickballpic", name: "Kickball", color: .systemIndigo)
                        }
                        
                        Button {
                            showMapView.toggle()
                        } label: {
                            CustomClassView(imageName: "spapic", name: "Spa Treatment", color: .systemOrange)
                        }
                    }
                    HStack {
                        Button {
                            showMapView.toggle()
                        } label: {
                            CustomClassView(imageName: "karatepic", name: "Martial Arts", color: .systemBlue)
                        }
                        
                        Button {
                            showMapView.toggle()
                        } label: {
                            CustomClassView(imageName: "meditationpic", name: "Meditation", color: .systemYellow)
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
