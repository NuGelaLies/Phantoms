//
//  UserDefault+Phantoms.swift
//  Mange
//
//  Created by NuGelaLiee on 2018/12/14.
//  Copyright © 2018 NuGelaLiee. All rights reserved.
//

import Foundation

public extension Phantom where T: UserDefaults {
    
    @discardableResult
    func removeObject(forKey defaultName: String) -> Phantom {
        base.removeObject(forKey: defaultName)
        return self
    }
    
    @discardableResult
    func set(_ value: Any?, forKey defaultName: String) -> Phantom {
        base.set(value, forKey: defaultName)
        return self
    }
    
    @discardableResult
    func set(_ value: Bool, forKey defaultName: String) -> Phantom {
        base.set(value, forKey: defaultName)
        return self
    }
    
    @discardableResult
    func set(_ value: Int, forKey defaultName: String) -> Phantom {
        base.set(value, forKey: defaultName)
        return self
    }
    
    @discardableResult
    func set(_ value: Double, forKey defaultName: String) -> Phantom {
        base.set(value, forKey: defaultName)
        return self
    }
    
    @discardableResult
    func set(_ value: Float, forKey defaultName: String) -> Phantom {
        base.set(value, forKey: defaultName)
        return self
    }
    
    @discardableResult
    func set(_ url: URL?, forKey defaultName: String) -> Phantom {
        base.set(url, forKey: defaultName)
        return self
    }
    
    @discardableResult
    func synchronize() -> Bool {
        return base.synchronize()
    }
}
