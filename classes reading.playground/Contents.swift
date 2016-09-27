//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let earthName = "Earth"
let earthMoons = 1
let earthOrbit = 365.26
let earthLife = true

let marsName = "Mars"
let marsMoons = 2
let marsOrbit = 686.97
let marsLife = false


func planetInfo(name:String, moons:Int, orbit:Double, hasLife:Bool){
    var moonNoun = "moon"
    if moons != 1 {
       moonNoun = "moons"
    }
    var hasLifeString = "has life"
    if !hasLife {
        hasLifeString = "does not have life"
    }
    print("\(name) has \(moons) \(moonNoun). Its orbit is \(orbit) days. it \(hasLifeString).")
}
planetInfo(name: "earthName", moons: 1, orbit: 365.26, hasLife: true)
planetInfo(name: "marsName", moons: 2, orbit: 686.97, hasLife: false)

let earth = ("Earth",1,365.26,true)
let mars = ("Mars",2,686.97,false)

func planetInfoTuple(planet:(String,Int,Double,Bool)){
    var moonNoun = "moon"
    if planet.1 != 1{
        moonNoun = "moons"
    }
    var hasLifeString = "has Life"
    if !planet.3{
       hasLifeString = "does not have life"
    }
    print("\(planet.0) has \(planet.1) \(moonNoun). Its orbit is \(planet.2) days. it \(hasLifeString).")
}
planetInfoTuple(planet: ("Earth",1,365.26,true))


class Planet{
    var name: String
    var numbersOfMoons: Int
    var orbitalPeriod: Double
    var hasLife: Bool
    
    init(name: String, numbersOfMoons: Int, orbitalPeriod: Double, hasLife: Bool){
        self.name = name
        self.numbersOfMoons = numbersOfMoons
        self.orbitalPeriod = orbitalPeriod
        self.hasLife = hasLife
    }
    func planetInfoObject(){
        var moonNoun = "moon"
        if self.numbersOfMoons != 1{
            moonNoun = "moons"
        }
        var hasLife = "has Life"
        if !self.hasLife{
            hasLife = "does not have life"
        }
        print(" The planet \(self.name) has \(self.numbersOfMoons) \(moonNoun). Its orbitalPeriod is \(self.orbitalPeriod) days. It \(hasLife)")
    }

}

let earth2 = Planet(name: "Earth", numbersOfMoons: 1, orbitalPeriod: 365.26, hasLife: true)
let mars2 = Planet(name: "Mars", numbersOfMoons: 2, orbitalPeriod: 686.56, hasLife: false)

earth2.planetInfoObject()
mars2.planetInfoObject()

