/**
 * Umbra
 * Copyright (c) Luca Meghnagi 2021
 * MIT license, see LICENSE file for details
 */

import UIKit

public extension UIView.Shadow {
    
    static func sketch(
        color: UIColor = .black,
        alpha: Float,
        x: CGFloat,
        y: CGFloat,
        blur: CGFloat,
        spread: (CGFloat, UIView)? = nil
    ) -> Self {
        Self(
            color: color,
            opacity: alpha,
            offset: CGSize(width: x, height: y),
            radius: blur / 2,
            path: {
                guard let spread = spread else { return nil }
                guard spread.0 != 0 else { return nil }
                let dx = -spread.0
                let rect = spread.1.bounds.insetBy(dx: dx, dy: dx)
                return UIBezierPath(rect: rect).cgPath
            }()
        )
    }
}
