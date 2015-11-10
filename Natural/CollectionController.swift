//
//  CollectionController.swift
//  Natural
//
//  Created by Andrew Hulsizer on 11/7/15.
//  Copyright © 2015 Swift Yeti. All rights reserved.
//

import UIKit

class CollectionController<T>: NSObject, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var cellConfiguration: CellConfiguration
    var dataController: DataController<T>
    
    init(cellConfiguration: CellConfiguration, dataController: DataController<T>) {
        self.cellConfiguration = cellConfiguration
        self.dataController = dataController
        super.init()
    }
    
    func registerCollectionView(collectionView: UICollectionView) {
        collectionView.registerNib(cellConfiguration.cellNib, forCellWithReuseIdentifier: cellConfiguration.cellIdentifier)
    }
    
    //MARK - UICollectionViewDelegate
    
    //MARK - UICollectionViewDataSource
    
    @objc func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.dataController.numberOfItems()
    }
    
    @objc func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(cellConfiguration.cellIdentifier, forIndexPath: indexPath)
        
        
        return cell
    }
}