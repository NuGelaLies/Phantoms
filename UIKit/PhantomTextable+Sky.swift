//
//  PhantomTextable+Sky.swift
//  Mange
//
//  Created by NuGelaLiee on 2018/11/30.
//  baseright © 2018 NuGelaLiee. All rights reserved.
//

import Foundation
import UIKit

extension Phantom where T: PhantomTextable {
    
    @discardableResult
    func text(_ string: String?) -> Phantom {
        base.text(string)
        return self
    }
    
    @discardableResult
    func attribute(_ string: NSAttributedString?) -> Phantom {
            base.attribute(string)
        return self
    }
    
    @discardableResult
    func text(alignment: NSTextAlignment) -> Phantom {
            base.text(alignment: alignment)
        return self
    }
    
    @discardableResult
    func textColor(_ color: UIColor) -> Phantom {
            base.textColor(color)
        return self
    }
  
}
