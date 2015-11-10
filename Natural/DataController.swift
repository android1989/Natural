//
//  DataController.swift
//  Natural
//
//  Created by Andrew Hulsizer on 11/7/15.
//  Copyright © 2015 Swift Yeti. All rights reserved.
//

import Foundation

class DataController<T> {
    
    private var items = Array<T>()
    private let request: Request<T>!
    private let paging: Bool
    
    init(request: Request<T>, shouldPage: Bool) {
        self.paging = shouldPage
        self.request = request
    }
    
    init(request: Request<T>) {
        self.paging = false
        self.request = request
    }
    
    func preformFetch() {
        self.request.fetch(nil)
    }
    
    func itemForIndex(index: UInt) -> T? {
        return nil
    }
    
    func indexForItem(item: T) -> UInt? {
        return 0
    }
    
    func numberOfItems() -> Int {
        return 0
    }
}