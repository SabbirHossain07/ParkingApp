//
//  HourChangeView.swift
//  Parking
//
//  Created by Sopnil Sohan on 18/5/22.
//

import SwiftUI

struct HourChangeView: View {
    @Binding var selectedHour: CGFloat
    @Binding var showHourSliderView: Bool
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.1).ignoresSafeArea()
            
            GeometryReader { geometry in
                VStack {
                    Text("Choose Hour(max: 6hour)")
                    //hour change slider
                    HourSliderView(progress: $selectedHour,
                                   showHourSlider: $showHourSliderView,
                                   width: geometry.size.width)
                }
            }
            .frame(height: 80)
            .padding(20)
            .background(Color.white)
            .cornerRadius(20)
            .offset(y: -140)
        }
    }
}
