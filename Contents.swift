//: Playground - noun: a place where people can play

import UIKit

enum Colors
{
    case Red
    case Blue
    case Green
    case Black
    case White
}

enum Options
{
    case Leather
    case Bose
    case Navigation
    case Camera
    case Radar
}


enum Packages
{
    case Basic
    case Sports
    case Touring
    case NONE
}


var carModel = 1


class Prius
{
    var color: String
    var opts:  [Options]
    var packg: Packages?
    var year: Int
    
    
    init( _ year: Int, _ color: String, _ opts: [Options], _ packg: Packages? = nil)
    {
        self.color = color
        self.opts = opts
        self.year = year
        
        if packg != nil
        {
            self.packg = packg!
        }
        else
        {
            self.packg = Packages.NONE
        }
    }  // init
    
    func getOptsArray()->[String]
    {
        var myOpts:[String] = Array(count: opts.count, repeatedValue: "LOL")
        
        for i in 0..<opts.count
        {
            myOpts[i] = String(opts[i])
        }
        
        return myOpts
    }
    
    
    func toString()->String
    {
        
        var myCar = String(year) + " Prius"
        myCar += "\nCOLOR: \(color)"
        myCar += "\nOPTIONS: \(getOptsArray())"
        
        if let realPackg = packg
        {
            
            myCar += "\nPACKAGE: \(String(realPackg))"
        }
        
        return myCar
        
    }
    
}  // class Prius


var prius:Prius

switch(carModel)
{
case 1 : prius = Prius(2017,String(Colors.Green),[Options.Leather, Options.Navigation, Options.Radar ], Packages.Sports)
case 2 : prius = Prius(2016,String(Colors.Red),[Options.Leather, Options.Navigation, Options.Radar ], Packages.Touring)
case 3 : prius = Prius(2015,String(Colors.Blue),[Options.Navigation], Packages.Touring)
case 4 : prius = Prius(2014,String(Colors.Black),[Options.Leather, Options.Radar , Options.Bose], Packages.Basic)
case 5 : prius = Prius(2013,String(Colors.White),[Options.Radar ])
default: prius = Prius(2012,String(Colors.Blue),[Options.Radar ])
}

print(prius.toString())
