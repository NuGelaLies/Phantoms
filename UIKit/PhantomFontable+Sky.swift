//
//  PhantomFontable+Sky.swift
//  Mange
//
//  Created by NuGelaLiee on 2018/11/30.
//  Copyright © 2018 NuGelaLiee. All rights reserved.
//

import Foundation
import UIKit

extension Phantom where T: PhantomFontable {
    
    @discardableResult
    func textFont(_ tfont: UIFont) -> Phantom {
        base.pFont(tfont)
        return self
    }
    
    @discardableResult
    func font(size fontSize: CGFloat , weight: UIFont.Weight = .regular) -> Phantom {
            base.pFont(theme.Font.size(fontSize, weight: weight))
        return self
    }
    
    @discardableResult
    func boldFont(size fontSize: CGFloat) -> Phantom {
            base.pFont(theme.Font.bold(fontSize))
        return self
    }
    
    @discardableResult
    func systemFont(size fontSize: CGFloat) -> Phantom {
        base.pFont(theme.Font.system(fontSize))
        return self
    }
}
