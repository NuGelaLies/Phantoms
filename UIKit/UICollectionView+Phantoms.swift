//
//  UICollectionView+Phantoms.swift
//  Mange
//
//  Created by NuGelaLiee on 2018/12/14.
//  Copyright © 2018 NuGelaLiee. All rights reserved.
//

import Foundation
import UIKit

extension Phantom where T: UICollectionView {
    
    @discardableResult
    func backgroundView(_ backgroundView: UIView?) -> Phantom {
        base.backgroundView = backgroundView
        return self
    }
    
    @discardableResult
    func dataSource(_ dataSource: UICollectionViewDataSource?) -> Phantom {
        base.dataSource = dataSource
        return self
    }
    
    @discardableResult
    func delegate(_ delegate: UICollectionViewDelegate?) -> Phantom {
        base.delegate = delegate
        return self
    }
    
    @discardableResult
    func register(_ cellClass: Swift.AnyClass?, forCellWithReuseIdentifier identifier: String) -> Phantom {
        base.register(cellClass, forCellWithReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(_ nib: UINib?, forCellWithReuseIdentifier identifier: String) -> Phantom {
        base.register(nib, forCellWithReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(_ viewClass: Swift.AnyClass?,
                  forSupplementaryViewOfKind elementKind: String,
                  withReuseIdentifier identifier: String) -> Phantom {
        base.register(viewClass,
                      forSupplementaryViewOfKind: elementKind,
                      withReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(_ viewClass: Swift.AnyClass?,
                  forSectionHeaderWithReuseIdentifier identifier: String) -> Phantom {
        base.register(viewClass,
                      forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                      withReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(_ viewClass: Swift.AnyClass?,
                  forSectionFooterWithReuseIdentifier identifier: String) -> Phantom {
        base.register(viewClass,
                      forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter,
                      withReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(_ nib: UINib?,
                  forSupplementaryViewOfKind kind: String,
                  withReuseIdentifier identifier: String) -> Phantom {
        base.register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(_ nib: UINib?,
                  forSectionHeaderWithReuseIdentifier identifier: String) -> Phantom {
        base.register(nib,
                      forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                      withReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(_ nib: UINib?,
                  forSectionFooterWithReuseIdentifier identifier: String) -> Phantom {
        base.register(nib,
                      forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter,
                      withReuseIdentifier: identifier)
        return self
    }
}
