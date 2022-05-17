//
//  ContentView.swift
//  Parking
//
//  Created by Sopnil Sohan on 11/5/22.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @StateObject var parkingFinder = ParkingFinder()
    
    var body: some View {
        ZStack(alignment: .top) {
            //MARK: Background
            Color.white.ignoresSafeArea()
            
            //MARK: Map View
            Map(coordinateRegion: $parkingFinder.region, annotationItems: parkingFinder.spots) { spot in
                MapAnnotation(
                    coordinate: spot.location, anchorPoint: CGPoint(x: 0.5, y: 0.5)) {
                        Button {
                            parkingFinder.selectedPlace = spot
                        } label: {
                            SpotAnnotatonView(fee: "\(Int(spot.fee))", selected: spot.id == parkingFinder.selectedPlace?.id)
                        }
                    }
            }
            .cornerRadius(75)
            .edgesIgnoringSafeArea(.top)
            .offset(y: -70)
           
            VStack {
                //MARK: Top Navigation
                TopNavigationView()
                
                Spacer()
                //MARK: Parking Card View
                ParkingCardView(parkingPlace: parkingFinder.selectedPlace ?? parkingFinder.spots[0])
                    .offset(y: -30)
                    .onTapGesture {
                        parkingFinder.showDetail = true
                    }
                //MARK: Search View
                SearchView()
            }
            .padding(.horizontal)
           
            if parkingFinder.showDetail {
                //MARK: Parking detail view click on card
                ParkingDetailView(parkingFinder: parkingFinder, region: MKCoordinateRegion(center: parkingFinder.selectedPlace?.location ?? parkingFinder.spots[0].location, span: MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)))
            }
        }
        .onAppear {
            parkingFinder.selectedPlace = parkingFinder.spots[0]
//            parkingFinder.showDetail = true
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
