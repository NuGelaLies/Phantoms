//
//  UIResponder+Phantoms.swift
//  Mange
//
//  Created by NuGelaLiee on 2018/12/14.
//  Copyright © 2018 NuGelaLiee. All rights reserved.
//

import Foundation
import UIKit

public extension Phantom where T: UIResponder {
    
    @discardableResult
    func becomeFirstResponder() -> Phantom {
        base.becomeFirstResponder()
        return self
    }
    
    @discardableResult
    func resignFirstResponder() -> Phantom {
        base.resignFirstResponder()
        return self
    }
}
