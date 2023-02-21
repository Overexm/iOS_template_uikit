//
//  CustomColor.swift
//  newf
//
//  Created by Merey Orynbassar on 20.02.2023.
//

import Foundation
import UIKit

enum CustomColor{
    case lightViolet
    case darkViolet
    case teal
    case whiteColor
    
    var color: UIColor{
        switch self {
        case .lightViolet:
            return UIColor(red: 99/255, green: 89/255, blue: 133/255, alpha: 1)
        case .darkViolet:
            return UIColor(red: 24/255, green: 18/255, blue: 43/255, alpha: 1)
        case .teal:
            return UIColor(red: 63/255, green: 151/255, blue: 155/255, alpha: 1)
        case .whiteColor:
            return UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1)
        }
        
    }
}

extension UIColor{
    static func custom(_ color: CustomColor) -> UIColor{
        return color.color
    }
}

let lightViolet = UIColor.custom(.lightViolet)
let darkViolet = UIColor.custom(.darkViolet)
let teal = UIColor.custom(.teal)
let whiteColor = UIColor.custom(.whiteColor)
