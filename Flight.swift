//
//  Flight.swift
//  AirlineReservationSystem
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Flight {
    var flightID : Int?
    var flightfrom : String?
    var flightto : String?
    var flightschdate : String?
    var flightairlineID : AirlinesList?
    var flightairplaneID : PlanetypeCategory?
    var flightpilotID : String?
    var FlightTypelist : String?
    
    
    init(){
        self.flightID = 0
        self.flightfrom = ""
        self.flightto = ""
        self.flightschdate = ""
        self.flightairlineID = AirlinesList.None
        self.flightairplaneID = ""
        self.flightpilotID = ""
    }
    init(flightID : Int, flightfrom : String, flightto : String, flightschdate : String, flightairlineID : Int, flightairplaneID : String, flightpilotID : String){
        self.flightID = flightID
        self.flightfrom = flightfrom
        self.flightto = flightto
        self.flightschdate = flightschdate
        self.flightairlineID = flightairlineID
        self.flightairplaneID = flightairplaneID
        self.flightpilotID = flightpilotID
    }
    
    func displayData()  {
        
        
        print("Flight ID : \(self.flightID ?? 0)")
        print("Flight From : \(self.flightfrom ?? "Unknown")")
        print("Flight To : \(self.flightto ?? "Unknown")")
        print("Flight Schedule Date : \(self.flightschdate ?? "Unknown")")
        print("Flight Airline ID : \(self.flightairlineID ?? 0)")
        print("Flight Airplane ID : \(self.flightairplaneID ?? "Unknown")")
        print("FlightID : \(self.flightpilotID ?? "Unknown")")
    }
    
}
