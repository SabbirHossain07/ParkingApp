//
//  SpotAnnotatonView.swift
//  Parking
//
//  Created by Sopnil Sohan on 18/5/22.
//

import SwiftUI

struct SpotAnnotatonView: View {
    let fee: String
    var selected: Bool = false
    var body: some View {
        ZStack {
            Image(selected ? "parking_marker" : "cost_marker")
                .resizable()
                .frame(width: 44, height: 44)
            
            Text("$\(fee)")
                .foregroundColor(.white)
                .font(.system(size: 14))
                .opacity(selected ? 0.0 : 1.0)
        }
    }
}


struct SpotAnnotatonView_Previews: PreviewProvider {
    static var previews: some View {
        SpotAnnotatonView(fee: "1000")
    }
}
