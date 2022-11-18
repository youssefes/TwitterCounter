//
//  Font.swift
//  
//
//  Created by LapStore on 18/11/2022.
//

import Foundation

enum Font : String {
    case Bold = "DINNextLTArabicBold"
    case Light = "DINNextLTArabicLight"
    case Medium = "DINNextLTArabicMedium"
    case Regular = "DINNextLTArabicRegular"
    var name : String {
        return self.rawValue
    }
}
