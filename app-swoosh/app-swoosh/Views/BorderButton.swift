//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Joseph Bielas on 12/20/18.
//  Copyright © 2018 DevMettle. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}

