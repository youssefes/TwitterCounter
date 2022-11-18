//
//  Colors.swift
//  
//
//  Created by LapStore on 18/11/2022.
//

import Foundation
import UIKit

extension UIColor {

    public enum twitterColor {
        static let main = UIColor.rgb(red: 3, green: 169, blue: 244)
        static let background = UIColor.rgb(red: 230, green: 246, blue: 254)
    }

    public static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 1) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
    
}
