/**
 * Umbra
 * Copyright (c) Luca Meghnagi 2021
 * MIT license, see LICENSE file for details
 */

import UIKit

public extension UIView {
    
    struct Shadow {
        
        public var color = UIColor.black
        
        public var opacity = Float(0)
        
        public var offset = CGSize.zero
        
        public var radius = CGFloat(0)
        
        public var path: CGPath? = nil
    }
    
    var shadow: Shadow {
        get {
            Shadow(
                color: layer.shadowColor.flatMap(UIColor.init) ?? .black,
                opacity: layer.shadowOpacity,
                offset: layer.shadowOffset,
                radius: layer.shadowRadius,
                path: layer.shadowPath
            )
        }
        set {
            layer.shadowColor = newValue.color.cgColor
            layer.shadowOpacity = newValue.opacity
            layer.shadowOffset = newValue.offset
            layer.shadowRadius = newValue.radius
            layer.shadowPath = newValue.path
        }
    }
    
    static let none = UIView.Shadow()
}
