//
//  UINavigationBarItems+Phantoms.swift
//  Mange
//
//  Created by NuGelaLiee on 2018/12/14.
//  Copyright © 2018 NuGelaLiee. All rights reserved.
//

import Foundation
import UIKit

public extension Phantom where T: UINavigationItem {
    
    @discardableResult
    func title(_ title: String?) -> Phantom {
        base.title = title
        return self
    }
    
    @discardableResult
    func titleView(_ titleView: UIView?) -> Phantom {
        base.titleView = titleView
        return self
    }
    
    @discardableResult
    func leftBarButtonItem(_ leftBarButtonItem: UIBarButtonItem?) -> Phantom {
        base.leftBarButtonItem = leftBarButtonItem
        return self
    }
    
    @discardableResult
    func rightBarButtonItem(_ rightBarButtonItem: UIBarButtonItem?) -> Phantom {
        base.rightBarButtonItem = rightBarButtonItem
        return self
    }
    
    @discardableResult
    func leftBarButtonItems(_ leftBarButtonItems: [UIBarButtonItem]?) -> Phantom {
        base.leftBarButtonItems = leftBarButtonItems
        return self
    }
    
    @discardableResult
    func rightBarButtonItems(_ rightBarButtonItems: [UIBarButtonItem]?) -> Phantom {
        base.rightBarButtonItems = rightBarButtonItems
        return self
    }
}
