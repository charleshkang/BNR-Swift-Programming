//
//  main.swift
//  MonsterTown
//
//  Created by Charles Kang on 6/17/16.
//  Copyright © 2016 Charles Kang. All rights reserved.
//

import Foundation

var myTown = Town()
let ts = myTown.townSize
print(ts)
myTown.changePopulation(1000000)

let fredTheZombie = Vampire()
fredTheZombie.town = myTown
fredTheZombie.town?.printTownDescription()

fredTheZombie.terrorizeTown()

print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim pool: \(fredTheZombie.victimPool)")
print(Zombie.spookyNoise)
if (Zombie.isTerrifying) {
    print("Run away!")
}
