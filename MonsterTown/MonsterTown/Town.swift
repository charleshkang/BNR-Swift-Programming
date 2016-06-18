//
//  Town.swift
//  MonsterTown
//
//  Created by Charles Kang on 6/17/16.
//  Copyright © 2016 Charles Kang. All rights reserved.
//

import Foundation

struct Town {
    var population = 1000
    var numberOfStoplights = 4
    
    func printTownDescription()
    {
        print("Population: \(population); number of stoplights: \(numberOfStoplights)")
    }
    
    mutating func changePopulation(amount: Int)
    {
        population += amount
    }
}

