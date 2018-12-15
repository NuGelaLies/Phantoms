//
//  PhantomCompatible.swift
//  Mange
//
//  Created by NuGelaLiee on 2018/11/29.
//  Copyright © 2018 NuGelaLiee. All rights reserved.
//
import Foundation

public protocol PhantomCompatible {
    
    associatedtype PhantomType
    
    var sky: PhantomType { get }
}

public extension PhantomCompatible {
    
    var sky: Phantom<Self> {
        return Phantom(self)
    }
}

extension NSObject: PhantomCompatible {}

