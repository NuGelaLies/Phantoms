//
//  UIGestureRecognizer+Phantoms.swift
//  Mange
//
//  Created by NuGelaLiee on 2018/12/14.
//  Copyright © 2018 NuGelaLiee. All rights reserved.
//

import Foundation
import UIKit

public extension Phantom where T: UIGestureRecognizer {
    
    @discardableResult
    func addTarget(_ target: Any, action: Selector) -> Phantom {
        base.addTarget(target, action: action)
        return self
    }
    
    @discardableResult
    func delegate(_ delegate: UIGestureRecognizerDelegate?) -> Phantom {
        base.delegate = delegate
        return self
    }
    
    @discardableResult
    func isEnabled(_ isEnabled: Bool) -> Phantom {
        base.isEnabled = isEnabled
        return self
    }
}

public extension Phantom where T: UITapGestureRecognizer {
    
    @discardableResult
    func numberOfTapsRequired(_ numberOfTapsRequired: Int) -> Phantom {
        base.numberOfTapsRequired = numberOfTapsRequired
        return self
    }
    
    @discardableResult
    func numberOfTouchesRequired(_ numberOfTouchesRequired: Int) -> Phantom {
        base.numberOfTouchesRequired = numberOfTouchesRequired
        return self
    }
}

public extension Phantom where T: UIPanGestureRecognizer {
    
    @discardableResult
    func minimumNumberOfTouches(_ minimumNumberOfTouches: Int) -> Phantom {
        base.minimumNumberOfTouches = minimumNumberOfTouches
        return self
    }
    
    @discardableResult
    func maximumNumberOfTouches(_ maximumNumberOfTouches: Int) -> Phantom {
        base.maximumNumberOfTouches = maximumNumberOfTouches
        return self
    }
}

public extension Phantom where T: UISwipeGestureRecognizer {
    
    @discardableResult
    func numberOfTouchesRequired(_ numberOfTouchesRequired: Int) -> Phantom {
        base.numberOfTouchesRequired = numberOfTouchesRequired
        return self
    }
    
    @discardableResult
    func direction(_ direction: UISwipeGestureRecognizer.Direction) -> Phantom {
        base.direction = direction
        return self
    }
}

public extension Phantom where T: UIPinchGestureRecognizer {
    
    @discardableResult
    func scale(_ scale: CGFloat) -> Phantom {
        base.scale = scale
        return self
    }
}

public extension Phantom where T: UILongPressGestureRecognizer {
    
    @discardableResult
    func numberOfTapsRequired(_ numberOfTapsRequired: Int) -> Phantom {
        base.numberOfTapsRequired = numberOfTapsRequired
        return self
    }
    
    @discardableResult
    func numberOfTouchesRequired(_ numberOfTouchesRequired: Int) -> Phantom {
        base.numberOfTouchesRequired = numberOfTouchesRequired
        return self
    }
    
    @discardableResult
    func minimumPressDuration(_ minimumPressDuration: CFTimeInterval) -> Phantom {
        base.minimumPressDuration = minimumPressDuration
        return self
    }
    
    @discardableResult
    func allowableMovement(_ allowableMovement: CGFloat) -> Phantom {
        base.allowableMovement = allowableMovement
        return self
    }
}

public extension Phantom where T: UIRotationGestureRecognizer {
    
    @discardableResult
    func rotation(_ rotation: CGFloat) -> Phantom {
        base.rotation = rotation
        return self
    }
}
