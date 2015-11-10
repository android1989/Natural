//
//  DayCellConfiguration.swift
//  Natural
//
//  Created by Andrew Hulsizer on 11/8/15.
//  Copyright © 2015 Swift Yeti. All rights reserved.
//

import UIKit

class DayCellConfiguration<T>: CellConfiguration {
    var cellIdentifier: String
    var cellNib: UINib
    
    var addAction: ((T) -> ())?
    
    init(cellIdentifier: String, nibName: String) {
        self.cellIdentifier = cellIdentifier
        self.cellNib = NSBundle.mainBundle().loadNibNamed(nibName, owner: nil, options: nil).first as! UINib;
    }
}