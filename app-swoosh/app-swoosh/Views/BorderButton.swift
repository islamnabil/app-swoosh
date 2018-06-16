//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Islam on 6/11/18.
//  Copyright © 2018 Islam. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
