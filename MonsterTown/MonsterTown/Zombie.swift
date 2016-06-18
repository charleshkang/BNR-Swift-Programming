//
//  Zombie.swift
//  MonsterTown
//
//  Created by Charles Kang on 6/17/16.
//  Copyright © 2016 Charles Kang. All rights reserved.
//

import Foundation

class Zombie: Monster {
    var walksWithLimp = true
    
    override func terrorizeTown()
    {
        while town?.population > 0 {
            town?.changePopulation(-10)
            super.terrorizeTown()
        }
        
        if town?.population < 0 {
            town?.population = 0
        }
    }
    
    func changeName(name: String, walksWithLimp: Bool)
    {
        self.name = name
        self.walksWithLimp = walksWithLimp
    }
}