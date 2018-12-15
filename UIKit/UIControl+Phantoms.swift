//
//  UIControl+Phantoms.swift
//  Mange
//
//  Created by NuGelaLiee on 2018/11/30.
//  Copyright © 2018 NuGelaLiee. All rights reserved.
//

import Foundation
import UIKit

extension Phantom where T: UIControl {
    
    @discardableResult
    func addTarget(_ target: Any? , action: Selector, for events: UIControl.Event) -> Phantom {
        base.addTarget(target, action: action, for: events)
        return self
    }
    
}
