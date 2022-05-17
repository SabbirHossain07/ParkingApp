//
//  Extensions.swift
//  Parking
//
//  Created by Sopnil Sohan on 11/5/22.
//

import SwiftUI

extension Color {
    static let darkColor = Color.init(red: 46/255, green: 45/255, blue: 45/255)
    static let lightColor = Color.init(red: 254/255, green: 254/255, blue: 254/255)
    static let yellowColor = Color.init(red: 245/255, green: 210/255, blue: 49/255)
}

extension UIScreen {
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}
