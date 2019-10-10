//
//  ToForget.swift
//  To Forget List
//
//  Created by Kneotrino on 10/10/19.
//  Copyright © 2019 Clay4Seed. All rights reserved.
//

import Foundation

class ToForget {
    var title       = ""
    var important   = false
    
    init(title:String){
        self.title = title
    }
    
    init(title:String,important:Bool){
        self.title      = title
        self.important  = important
    }
    
    convenience init() {
        self.init(title:"")
    }

}
