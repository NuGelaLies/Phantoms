//
//  UILabel+Phantoms.swift
//  Mange
//
//  Created by NuGelaLiee on 2018/11/29.
//  baseright © 2018 NuGelaLiee. All rights reserved.
//

import Foundation
import UIKit

extension Phantom where T: UILabel {
    
    @discardableResult
    func shadowColor(_ shadowColor: UIColor?) -> Phantom {
            base.shadowColor = shadowColor
        return self
    }
    
    @discardableResult
    func shadowOffset(_ shadowOffset: CGSize) -> Phantom {
            base.shadowOffset = shadowOffset
        return self
    }
    
    @discardableResult
    func shadowOffset(width: CGFloat, height: CGFloat) -> Phantom {
            base.shadowOffset = CGSize(width: width, height: height)
        return self
    }
    
    @discardableResult
    func numberOfLines(_ numberOfLines: Int) -> Phantom {
            base.numberOfLines = numberOfLines
        return self
    }
    
    @discardableResult
    func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Phantom {
            base.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
}
