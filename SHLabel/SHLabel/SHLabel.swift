//
//  File.swift
//  wristBand
//
//  Created by suhengxian on 2021/12/15.
//

import Foundation
import UIKit

class SHLabel: UILabel {
    
    public var textInsets: UIEdgeInsets = .zero
    
    override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: textInsets))
    }
    
   override func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
       
       let insets = textInsets
       var rect = super.textRect(forBounds: bounds.inset(by: insets), limitedToNumberOfLines: numberOfLines)
       
       rect.origin.x -= insets.left
       rect.origin.y -= insets.top
       rect.size.width += (insets.left + insets.right)
       rect.size.height += (insets.top + insets.bottom)
       
    return rect
   }
}
