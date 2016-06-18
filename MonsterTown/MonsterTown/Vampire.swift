//
//  Vampire.swift
//  MonsterTown
//
//  Created by Charles Kang on 6/17/16.
//  Copyright © 2016 Charles Kang. All rights reserved.
//

import Foundation

class Vampire: Monster {
    
    final override func terrorizeTown()
    {
        town?.population -= 1
        print("The population is now \(town!.population) after the attack")
    }
}