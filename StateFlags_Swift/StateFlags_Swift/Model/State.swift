//
//  State.swift
//  StateFlags_Swift
//
//  Created by DevMountain on 9/10/18.
//  Copyright © 2018 trevorAdcock. All rights reserved.
//

import Foundation

class State{
    
    let name: String
    let abbreviation: String
    
    init(name: String, abbreviation: String){
        self.name = name
        self.abbreviation = abbreviation
    }
}

extension State: Equatable{
    
    static func ==(lhs: State, rhs: State) -> Bool{
        return lhs.name == rhs.name && rhs.abbreviation == lhs.abbreviation
    }
}
