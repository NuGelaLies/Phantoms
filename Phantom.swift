//
//  Phantom.swift
//  Mange
//
//  Created by NuGelaLiee on 2018/11/29.
//  Copyright © 2018 NuGelaLiee. All rights reserved.
//
public struct Phantom<T> {
    
    public let base: T
    
    public var persona: T {
        return base
    }
    
    public init(_ base: T) {
        self.base = base
    }
}
