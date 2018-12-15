//
//  PhantomFontable.swift
//  Mange
//
//  Created by NuGelaLiee on 2018/11/30.
//  Copyright © 2018 NuGelaLiee. All rights reserved.
//

import Foundation
import UIKit

protocol PhantomFontable {
    func pFont(_ font: UIFont)
}

extension UILabel: PhantomFontable {
    func pFont(_ font: UIFont) {
        self.font = font
    }
}

extension UITextField: PhantomFontable {
    func pFont(_ font: UIFont) {
        self.font = font
    }
}

extension UITextView: PhantomFontable {
    func pFont(_ font: UIFont) {
        self.font = font
    }
}

extension UIButton: PhantomFontable {
    func pFont(_ font: UIFont) {
        self.titleLabel?.font = font
    }
}
