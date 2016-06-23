//
//  Town.swift
//  MonsterTown
//
//  Created by Charles Kang on 6/17/16.
//  Copyright © 2016 Charles Kang. All rights reserved.
//

import Foundation

struct Town {
    let region: String
    var population: Int {
        didSet(oldPopulation) {
            print("The population has changed to \(population) from \(oldPopulation)")
        }
    }
    init?(population: Int, stoplights: Int) {
        self.init(region: "N/A", population: population, stoplights: stoplights)
    }
    var numberOfStoplights: Int
    init?(region: String, population: Int, stoplights: Int) {
        if population <= 0 {
            return nil
        }
        self.region = region
        self.population = population
        numberOfStoplights = stoplights
    }
    
    enum Size {
        case Small
        case Medium
        case Large
    }
    
    func printTownDescription()
    {
        print("Population: \(population); number of stoplights: \(numberOfStoplights); region: \(region)")
    }
    
    mutating func changePopulation(amount: Int)
    {
        population += amount
    }
}

