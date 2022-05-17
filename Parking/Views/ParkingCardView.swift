//
//  ParkingCardView.swift
//  Parking
//
//  Created by Sopnil Sohan on 18/5/22.
//

import SwiftUI
import MapKit

struct ParkingCardView: View {
    let parkingPlace: ParkingItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                Text(parkingPlace.name)
                    .font(.system(size: 18, weight: .bold))
                Text(parkingPlace.address)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .padding(.bottom, 20)
                
                HStack {
                    Image(systemName: "car.fill")
                        .foregroundColor(.gray)
                    Text("\(parkingPlace.carLimit)")
                    
                    Image(systemName: "dollarsign.circle.fill")
                        .foregroundColor(.gray)
                    Text("$\(String.init(format: "%0.2f", parkingPlace.fee))/h")
                }
            }
            Spacer()
            
            Image(parkingPlace.photoName)
                .resizable()
                .frame(width: 88, height: 88)
                .scaledToFit()
                .cornerRadius(15)
        }
        .padding()
        .frame(height: 150)
        .background(Color.white)
        .cornerRadius(40)
    }
}

struct ParkingCardView_Previews: PreviewProvider {
    static var previews: some View {
        ParkingCardView(parkingPlace: ParkingItem(name: "California Parking", address: "2351 Mission St, San Francisco", photoName: "1", place: "B1", carLimit: 45, location: CLLocationCoordinate2D(latitude: 37.7985599, longitude: -122.4100056), fee: 5.0, hour: "0.0"))
    }
}
