//
//  SearchView.swift
//  Parking
//
//  Created by Sopnil Sohan on 18/5/22.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .font(.system(size: 22))
            Text("Parking address")
                .foregroundColor(.gray)
            Spacer()
            
            Image(systemName: "chevron.left")
                .padding()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
