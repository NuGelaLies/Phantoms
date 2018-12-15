//
//  theme.swift
//  Mange
//
//  Created by NuGelaLiee on 2018/7/18.
//  Copyright © 2018年 NuGelaLiee. All rights reserved.
//

import Foundation
import UIKit

let kScreenW = UIScreen.main.bounds.width
let kScreenH = UIScreen.main.bounds.height

struct theme {
    
    struct Color {

        /// red
        static let red: UIColor = UIColor.red

        /// d4d4d4
        static let lightGray: UIColor = UIColor.lightGray

    }
    
    struct Font {
        ///10
        static let f10 = size(10)
        ///12
        static let f12 = size(12)
        ///14
        static let f14 = size(14)
        ///15
        static let f15 = size(15)
        ///16
        static let f16 = size(16)
        ///17
        static let f17 = size(17)
        
        
        ///10
        static let b10 = bold(10)
        ///12
        static let b12 = bold(12)
        ///14
        static let b14 = bold(14)
        ///15
        static let b15 = bold(15)
        ///16
        static let b16 = bold(16)
        ///17
        static let b17 = bold(17)
        
        
        static func size(_ size: CGFloat, weight: UIFont.Weight = .regular) -> UIFont {
            return UIFont.monospacedDigitSystemFont(ofSize: size, weight: weight)
        }
        
        static func bold(_ size: CGFloat) -> UIFont {
            return UIFont.boldSystemFont(ofSize: size)
        }
        
        static func system(_ size: CGFloat) -> UIFont {
            return UIFont.systemFont(ofSize: size)
        }
        
    }
}
