//
//  UIButtonExt.swift
//  goal-list
//
//  Created by Brandon Criss on 5/24/19.
//  Copyright © 2019 Brandon Criss. All rights reserved.
//

import UIKit

extension UIButton {
    
    func setSelectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.3017679751, green: 0.746871829, blue: 0.3396928906, alpha: 1)
    }
    
    func setDeselectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.4922404289, green: 0.7722371817, blue: 0.4631441236, alpha: 1)
    }
}
