//
//  Typography.swift
//  
//
//  Created by LapStore on 18/11/2022.
//

import Foundation
import UIKit
extension DesignSystem {
    enum Typography {
        case screenTitle
       case titel
        private var fontDiscriptor : CustomFontDiscriptor {
            switch self {
            case .screenTitle:
                return CustomFontDiscriptor(font: .Medium, size: 18, Style: .body)
            case .titel:
                return CustomFontDiscriptor(font: .Medium, size: 14, Style: .body)
            }
        }
    }
}
