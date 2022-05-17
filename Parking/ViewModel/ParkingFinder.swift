//
//  ParkingFinder.swift
//  Parking
//
//  Created by Sopnil Sohan on 11/5/22.
//

import SwiftUI
import MapKit

class ParkingFinder: ObservableObject {
    @Published var spots = Data.spots
    @Published var selectedPlace: ParkingItem?
    @Published var showDetail = false
    
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(
        latitude: Data.spots[0].location.latitude,
        longitude: Data.spots[0].location.longitude),
        span: MKCoordinateSpan(latitudeDelta: 0.007,
        longitudeDelta: 0.007))
}
