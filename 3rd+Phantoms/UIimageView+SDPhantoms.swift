//
//  UIimageView+SDPhantoms.swift
//  Mange
//
//  Created by NuGelaLiee on 2018/11/29.
//  baseright © 2018 NuGelaLiee. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

extension Phantom where T: UIImageView {
    func image(imageUrl: String?, placeHolder: UIImage? = UIImage(named: "boutique_placeholder"), animated: Bool = true) {
        if let imageURL = imageUrl {
            if imageURL.hasPrefix("http") {
                if animated {
                    base.alpha = 0.0
                    base.sd_setImage(with: URL(string: imageURL), placeholderImage: placeHolder, options: .refreshCached) { [weak wbase = base] (_, _, _, _) in
                        if let wbase = wbase {
                            wbase.fadeIn()
                        }
                    }
                } else {
                    base.sd_setImage(with: URL(string: imageURL), placeholderImage: placeHolder, options: .refreshCached)
                }
            } else {
                if let image = UIImage(named: imageURL) {
                    base.image = image
                }else{
                    base.image = UIImage(contentsOfFile: imageURL)
                }
            }
        } else {
            base.image = placeHolder
        }
    }
    
    
    func imagePhantoms(imageUrl: String?, placeHolder: UIImage? = UIImage(named: "boutique_placeholder"), animated: Bool = true) -> Phantom {
        if let imageURL = imageUrl {
            if imageURL.hasPrefix("http") {
                if animated {
                    base.alpha = 0.0
                    base.sd_setImage(with: URL(string: imageURL), placeholderImage: placeHolder, options: .refreshCached) { [weak wbase = base] (_, _, _, _) in
                        if let wbase = wbase {
                            wbase.fadeIn()
                        }
                    }
                } else {
                    base.sd_setImage(with: URL(string: imageURL), placeholderImage: placeHolder, options: .refreshCached)
                }
            } else {
                if let image = UIImage(named: imageURL) {
                    base.image = image
                }else{
                    base.image = UIImage(contentsOfFile: imageURL)
                }
            }
        } else {
            base.image = placeHolder
        }
        
        return self
    }
}
