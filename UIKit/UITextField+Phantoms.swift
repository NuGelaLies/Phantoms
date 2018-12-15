//
//  UITextField+Phantoms.swift
//  Mange
//
//  Created by NuGelaLiee on 2018/12/14.
//  Copyright © 2018 NuGelaLiee. All rights reserved.
//

import Foundation
import UIKit

public extension Phantom where T: UITextField {
    
    @discardableResult
    func delegate(_ delegate: UITextFieldDelegate?) -> Phantom {
        base.delegate = delegate
        return self
    }
    
    @discardableResult
    func placeholder(_ placeholder: String?) -> Phantom {
        base.placeholder = placeholder
        return self
    }
    
    @discardableResult
    func attributedPlaceholder(_ attributedPlaceholder: NSAttributedString?) -> Phantom {
        base.attributedPlaceholder = attributedPlaceholder
        return self
    }
    
    @discardableResult
    func borderStyle(_ borderStyle: UITextField.BorderStyle) -> Phantom {
        base.borderStyle = borderStyle
        return self
    }
    
    @discardableResult
    func defaultTextAttributes(_ defaultTextAttributes: [String: Any]) -> Phantom {
        #if swift(>=4.2)
        base.defaultTextAttributes = convertToNSAttributedStringKeyDictionary(defaultTextAttributes)
        #else
        base.defaultTextAttributes = defaultTextAttributes
        #endif
        return self
    }
    
    @discardableResult
    func clearsOnBeginEditing(_ clearsOnBeginEditing: Bool) -> Phantom {
        base.clearsOnBeginEditing = clearsOnBeginEditing
        return self
    }
    
    @discardableResult
    func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Phantom {
        base.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
    
    @discardableResult
    func minimumFontSize(_ minimumFontSize: CGFloat) -> Phantom {
        base.minimumFontSize = minimumFontSize
        return self
    }
    
    @discardableResult
    func allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool) -> Phantom {
        base.allowsEditingTextAttributes = allowsEditingTextAttributes
        return self
    }
    
    @discardableResult
    func typingAttributes(_ typingAttributes: [String: Any]?) -> Phantom {
        #if swift(>=4.2)
        base.typingAttributes = convertToOptionalNSAttributedStringKeyDictionary(typingAttributes)
        #else
        base.typingAttributes = typingAttributes
        #endif
        return self
    }
    
    @discardableResult
    func clearButtonMode(_ clearButtonMode: UITextField.ViewMode) -> Phantom {
        base.clearButtonMode = clearButtonMode
        return self
    }
    
    @discardableResult
    func leftView(_ leftView: UIView?) -> Phantom {
        base.leftView = leftView
        return self
    }
    
    @discardableResult
    func leftViewMode(_ leftViewMode: UITextField.ViewMode) -> Phantom {
        base.leftViewMode = leftViewMode
        return self
    }
    
    @discardableResult
    func rightView(_ rightView: UIView?) -> Phantom {
        base.rightView = rightView
        return self
    }
    
    @discardableResult
    func rightViewMode(_ rightViewMode: UITextField.ViewMode) -> Phantom {
        base.rightViewMode = rightViewMode
        return self
    }
    
    @discardableResult
    func keyboardType(_ keyboardType: UIKeyboardType) -> Phantom {
        base.keyboardType = keyboardType
        return self
    }
    
    @discardableResult
    func returnKeyType(_ returnKeyType: UIReturnKeyType) -> Phantom {
        base.returnKeyType = returnKeyType
        return self
    }
    
    @discardableResult
    func isSecureTextEntry(_ isSecureTextEntry: Bool) -> Phantom {
        base.isSecureTextEntry = isSecureTextEntry
        return self
    }
    
    @discardableResult
    func textContentType(_ textContentType: UITextContentType) -> Phantom {
        if #available(iOS 10.0, *) {
            base.textContentType = textContentType
        }
        return self
    }
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToNSAttributedStringKeyDictionary(_ input: [String: Any])
    -> [NSAttributedString.Key: Any] {
        return Dictionary(uniqueKeysWithValues: input.map { key, value in
            (NSAttributedString.Key(rawValue: key), value)
        })
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToOptionalNSAttributedStringKeyDictionary(_ input: [String: Any]?) -> [NSAttributedString.Key: Any]? {
    guard let input = input else { return nil }
    return Dictionary(uniqueKeysWithValues: input.map { key, value in
        (NSAttributedString.Key(rawValue: key), value)
    })
}
