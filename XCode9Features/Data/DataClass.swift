//
//  DataClass.swift
//  XCode9Features
//
//  Created by Dipesh Wadekar on 10/08/17.
//  Copyright © 2017 Sureel Bhurat. All rights reserved.
//

import UIKit

class Laptop: NSObject {
    var name: String?
    weak var owner: Person?
    
    init(nm:String, own:Person?) {
        name = nm
        owner = own
    }
    
    deinit {
        print("Deallocated laptop object")
    }
}

class Person: NSObject {
    var name: String?
    var laptop: Laptop?
    
    init(nm:String, lap:Laptop?) {
        name = nm
        laptop = lap
    }
    
    deinit {
        print("Deallocated person object")
    }
}

