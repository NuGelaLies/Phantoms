//
//  UIScrollView+MJPhantoms.swift
//  Mange
//
//  Created by NuGelaLiee on 2018/12/3.
//  Copyright © 2018 NuGelaLiee. All rights reserved.
//

import Foundation
import UIKit
import MJRefresh

extension Phantom where T: UIScrollView {
    
    @discardableResult
    func refreshHeader(_ header: MJRefreshHeader) -> Phantom {
        base.mj_header = header
        return self
    }
    
    @discardableResult
    func refreshFooter(_ footer: MJRefreshFooter) -> Phantom {
        base.mj_footer = footer
        return self
    }
    
}
