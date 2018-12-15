//
//  UIImageView+Phantoms.swift
//  Mange
//
//  Created by NuGelaLiee on 2018/11/29.
//  baseright © 2018 NuGelaLiee. All rights reserved.
//

import Foundation
import UIKit

extension Phantom where T: UIImageView {
    
    @discardableResult
    func image(_ image: UIImage?) -> Phantom {
        base.image = image
        return self
    }
    
    @discardableResult
    func image(name: String) -> Phantom {
        base.image = UIImage(named: name)
        return self
    }
    
    @discardableResult
    func isHighlighted(_ isHighlighted: Bool) -> Phantom {
        base.isHighlighted = isHighlighted
        return self
    }
}
