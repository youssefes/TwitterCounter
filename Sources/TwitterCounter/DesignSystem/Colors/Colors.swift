//
//  Colors.swift
//  
//
//  Created by LapStore on 18/11/2022.
//

import Foundation
import UIKit

extension DesignSystem {
    
    
    enum Colors : String {
        case Main
        case background
        var color : UIColor {
            switch self {
            case .Main:
                return UIColor.rgb(red: 3, green: 169, blue: 244)
            case .background :
                return UIColor.rgb(red: 230, green: 246, blue: 254)
            }
        }
    }
}

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 1) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
}
