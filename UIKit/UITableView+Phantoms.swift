//
//  UITableView+Phantoms.swift
//  Mange
//
//  Created by NuGelaLiee on 2018/12/3.
//  Copyright © 2018 NuGelaLiee. All rights reserved.
//

import Foundation

import UIKit

extension Phantom where T: UITableView {
    
    @discardableResult
    func backgroundView(_ backgroundView: UIView?) -> Phantom {
        base.backgroundView = backgroundView
        return self
    }
    
    @discardableResult
    func dataSource(_ dataSource: UITableViewDataSource?) -> Phantom {
        base.dataSource = dataSource
        return self
    }
    
    @discardableResult
    func delegate(_ delegate: UITableViewDelegate?) -> Phantom {
        base.delegate = delegate
        return self
    }
    
    @discardableResult
    func rowHeight(_ rowHeight: CGFloat) -> Phantom {
        base.rowHeight = rowHeight
        return self
    }
    
    @discardableResult
    func sectionHeaderHeight(_ sectionHeaderHeight: CGFloat) -> Phantom {
        base.sectionHeaderHeight = sectionHeaderHeight
        return self
    }
    
    @discardableResult
    func sectionFooterHeight(_ sectionFooterHeight: CGFloat) -> Phantom {
        base.sectionFooterHeight = sectionFooterHeight
        return self
    }
    
    @discardableResult
    func estimatedRowHeight(_ estimatedRowHeight: CGFloat) -> Phantom {
        base.estimatedRowHeight = estimatedRowHeight
        return self
    }
    
    @discardableResult
    func estimatedSectionHeaderHeight(_ estimatedSectionHeaderHeight: CGFloat) -> Phantom {
        base.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight
        return self
    }
    
    @discardableResult
    func estimatedSectionFooterHeight(_ estimatedSectionFooterHeight: CGFloat) -> Phantom {
        base.estimatedSectionFooterHeight = estimatedSectionFooterHeight
        return self
    }
    
    @discardableResult
    func sectionIndexColor(_ sectionIndexColor: UIColor?) -> Phantom {
        base.sectionIndexColor = sectionIndexColor
        return self
    }
    
    @discardableResult
    func sectionIndexBackgroundColor(_ sectionIndexBackgroundColor: UIColor?) -> Phantom {
        base.sectionIndexBackgroundColor = sectionIndexBackgroundColor
        return self
    }
    
    @discardableResult
    func sectionIndexTrackingBackgroundColor(_ sectionIndexTrackingBackgroundColor: UIColor?) -> Phantom {
        base.sectionIndexTrackingBackgroundColor = sectionIndexTrackingBackgroundColor
        return self
    }
    
    @discardableResult
    func sectionIndexMinimumDisplayRowCount(_ sectionIndexMinimumDisplayRowCount: Int) -> Phantom {
        base.sectionIndexMinimumDisplayRowCount = sectionIndexMinimumDisplayRowCount
        return self
    }
    
    @discardableResult
    func separatorStyle(_ separatorStyle: UITableViewCell.SeparatorStyle) -> Phantom {
        base.separatorStyle = separatorStyle
        return self
    }
    
    @discardableResult
    func separatorColor(_ separatorColor: UIColor?) -> Phantom {
        base.separatorColor = separatorColor
        return self
    }
    
    @discardableResult
    func separatorInset(_ separatorInset: UIEdgeInsets) -> Phantom {
        base.separatorInset = separatorInset
        return self
    }
    
    @discardableResult
    func separatorInset(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> Phantom {
        base.separatorInset = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
        return self
    }
    
    @discardableResult
    func tableHeaderView(_ tableHeaderView: UIView?) -> Phantom {
        base.tableHeaderView = tableHeaderView
        return self
    }
    
    @discardableResult
    func tableFooterView(_ tableFooterView: UIView?) -> Phantom {
        base.tableFooterView = tableFooterView
        return self
    }
    
    @discardableResult
    func registerNib<T: UITableViewCell>(nib: T.Type) -> Phantom {
        let nib = UINib(nibName: String(describing: T.self), bundle: nil)
        base.register(nib, forCellReuseIdentifier: String(describing: T.self))
        return self
    }
    
    @discardableResult
    func register<T: UITableViewCell>(_: T.Type) -> Phantom {
        base.register(T.self, forCellReuseIdentifier: String(describing: T.self))
        return self
    }
    
    @discardableResult
    func registerHFNib<T: UITableViewHeaderFooterView>(nib: T.Type) -> Phantom {
        let nib = UINib(nibName: String(describing: T.self), bundle: nil)
        base.register(nib, forHeaderFooterViewReuseIdentifier: String(describing: T.self))
        return self
    }
    
    @discardableResult
    func registerHF<T: UITableViewHeaderFooterView>(_: T.Type) -> Phantom {
        base.register(T.self, forHeaderFooterViewReuseIdentifier: String(describing: T.self))
        return self
    }
    
    @discardableResult
    func hideEmptyFooter() -> Phantom {
        base.tableFooterView = UIView()
        return self
    }
}
