//
//  CellConfiguration.swift
//  Natural
//
//  Created by Andrew Hulsizer on 11/8/15.
//  Copyright © 2015 Swift Yeti. All rights reserved.
//

import UIKit

protocol CellConfiguration {
    var cellIdentifier: String { get set }
    var cellNib: UINib { get set }
}