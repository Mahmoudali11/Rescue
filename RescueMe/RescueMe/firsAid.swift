//
//  firsAid.swift
//  RescueMe
//
//  Created by Admin on 2/13/19.
//  Copyright © 2019 AAMM. All rights reserved.
//

import Foundation
class firstAid {
    var category:String?
    var type:String?
    var img:String?
    var instructions:String?
    init(category:String,type:String,img:String,instructions:String) {
        self.category=category
        self.type=type
        self.img=img
        self.instructions=instructions
    }
    
}
