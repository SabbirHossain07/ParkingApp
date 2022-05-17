//
//  TopNavigationView.swift
//  Parking
//
//  Created by Sopnil Sohan on 18/5/22.
//

import SwiftUI

struct TopNavigationView: View {
    var body: some View {
        HStack {
            VStack(spacing: 8) {
                Image(systemName: "minus")
                    .foregroundColor(Color.yellowColor)
                
                Image(systemName: "minus")
                    .foregroundColor(.gray)
            }
            .font(.system(size: 26))
            .frame(width: 66, height: 66)
            .background(Color.white)
            .cornerRadius(25)
            
            Spacer()
            
            Image("car")
            
            VStack(alignment: .leading, spacing: 2) {
                Text("My car")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                Text("A16591")
                    .font(.system(size: 17))
                    .foregroundColor(Color.yellowColor)
            }
            .frame(width: 145, height: 66)
            .background(Color.white)
            .cornerRadius(25)
        }
    }
}

struct TopNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        TopNavigationView()
    }
}
