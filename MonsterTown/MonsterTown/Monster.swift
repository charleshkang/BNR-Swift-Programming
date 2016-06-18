//
//  Monster.swift
//  MonsterTown
//
//  Created by Charles Kang on 6/17/16.
//  Copyright © 2016 Charles Kang. All rights reserved.
//

import Foundation

class Monster {
    var town: Town?
    var name = "Monster"
    
    func terrorizeTown()
    {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}
