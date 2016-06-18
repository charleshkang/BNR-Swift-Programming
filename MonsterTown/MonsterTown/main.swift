//
//  main.swift
//  MonsterTown
//
//  Created by Charles Kang on 6/17/16.
//  Copyright © 2016 Charles Kang. All rights reserved.
//

import Foundation

var myTown = Town()
myTown.changePopulation(500)

let fredTheZombie = Vampire()
fredTheZombie.town = myTown
fredTheZombie.town?.printTownDescription()

fredTheZombie.terrorizeTown()