//
//  Zombie.swift
//  MonsterTown
//
//  Created by Charles Kang on 6/17/16.
//  Copyright © 2016 Charles Kang. All rights reserved.
//

import Foundation

class Zombie: Monster {
    override class var spookyNoise: String {
        return "Brains..."
    }
    
    var walksWithLimp = true
    private(set) var isFallingApart = false
    
    final override func terrorizeTown()
    {
        if !isFallingApart {
            town?.changePopulation(-10)
        }
        super.terrorizeTown()
        
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