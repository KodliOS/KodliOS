//
//  File.swift
//  simple protocol and delegate
//
//  Created by Oguz on 31.12.2019.
//  Copyright © 2019 Oguz. All rights reserved.
//

import UIKit

extension UIColor {
    static var random: UIColor {
        return UIColor(red: .random(in: 0...1),
                       green: .random(in: 0...1),
                       blue: .random(in: 0...1),
                       alpha: 1.0)
    }
}
