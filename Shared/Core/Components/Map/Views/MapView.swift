//
//  MapView.swift
//  yokeMaster (iOS)
//
//  Created by Nick Viamin on 7/1/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @Environment(\.presentationMode) var mode
    @ObservedObject var locationManager = LocationManager()
    @State private var landmarks: [Landmark] = [Landmark]()
    @State private var search: String = ""
    
    private func getNearByLandmarks() {
        
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = search
        
        let search = MKLocalSearch(request: request)
        search.start{ (response, error) in
            if let response = response {
                
                let mapItems = response.mapItems
                self.landmarks = mapItems.map {
                    Landmark(placemark: $0.placemark)
                }
                
            }
        }
        
    }
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Button {
                mode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "arrow.left")
                    .resizable()
                    .frame(width: 20, height: 16)
                    .foregroundColor(.black)
                    .offset(x: 16, y: -4)
            }
            .padding()
            MapViewModel(landmarks: landmarks)
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
