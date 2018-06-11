//: Practice Hour - noun: an hour where people can practice

import UIKit

class Plane
{
    var leftWing:Wing? = nil
    var rightWing:Wing? = nil
}

class Wing
{
    var engine:Engine? = Engine()
}

class Engine
{
    var power:Int = 0
}

let plane = Plane()
plane.leftWing = Wing()

plane.leftWing?.engine?.power = 50

//print(plane.leftWing?.engine?.power)

if let power = plane.leftWing?.engine?.power {
    //print(power)
}

var number = Int("Bob")

if number == nil {
    number = 0
}

print(number!)



