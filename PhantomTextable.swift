//
//  PhantomTextable.swift
//  Mange
//
//  Created by NuGelaLiee on 2018/11/30.
//  Copyright © 2018 NuGelaLiee. All rights reserved.
//

import Foundation
import UIKit

protocol PhantomTextable {
    
    func text(_ text: String?)
    
    func attribute(_ text: NSAttributedString?)
    
    func textColor(_ color: UIColor)
    
    func text(alignment: NSTextAlignment)
    
}

extension UILabel: PhantomTextable {
    
    func text(_ text: String?) {
        self.text = text
    }
    
    func attribute(_ text: NSAttributedString?) {
        self.attributedText = text
    }
    
    func textColor(_ color: UIColor) {
        self.textColor = color
    }
    
    func text(alignment: NSTextAlignment) {
        self.textAlignment = alignment
    }
    
    
}

extension UITextField: PhantomTextable {
    func text(_ text: String?) {
        self.text = text
    }
    
    func attribute(_ text: NSAttributedString?) {
        self.attributedText = text
    }
    
    func textColor(_ color: UIColor) {
        self.textColor = color
    }
    
    func text(alignment: NSTextAlignment) {
        self.textAlignment = alignment
    }
}

extension UITextView: PhantomTextable {
    func text(_ text: String?) {
        self.text = text ?? ""
    }
    
    func attribute(_ text: NSAttributedString?) {
        if let text = text {
            self.attributedText = text
        }
    }
    
    func textColor(_ color: UIColor) {
        self.textColor = color
    }
    
    func text(alignment: NSTextAlignment) {
        self.textAlignment = alignment
    }

}
