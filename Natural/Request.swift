//
//  Request.swift
//  Natural
//
//  Created by Andrew Hulsizer on 11/7/15.
//  Copyright © 2015 Swift Yeti. All rights reserved.
//

import Foundation

class Request<T> {
    
    private let url: String!
    
    init(url: String) {
        self.url = url;
    }
    
    func fetch(params: [String: String]?) {
        
    }
    
    func retry() {
        
    }
}