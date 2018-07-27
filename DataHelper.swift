//
//  DataHelper.swift
//  AirlineReservationSystem
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class DataHelper{
    var FlightList = [Int : Flight]()
    //var PassengerList = [String : Passenger]()
    
    init(){
        self.loadFlightData()
       // self.loadPassengerData()
    }

    func loadFlightData(){
        FlightList = [:]
        
        do{
    
  
        let raman =  Flight(flightID: 04, flightfrom: "India", flightto: "Canada", flightschdate: "05/08/2018", flightairlineID: 11, flightairplaneID: "AC", flightpilotID: "S01")
        FlightList[raman.flightID!] = raman
        
       let shehnaz =  Flight(flightID: 22, flightfrom: "Canada", flightto: "America", flightschdate: "22/08/2018", flightairlineID: 12, flightairplaneID: "AA", flightpilotID: "P02")
        FlightList[shehnaz.flightID!] = shehnaz
        
        let americanairlines = try Flight(FlightID: 01 ,flightName: "AmericanAirlines",  Fare: 1200 )
            FlightList[americanairlines.FlightID!] = americanairlines
    
        let aircanada = try Flight(FlightID: 02, FlightName: "AirCanada",
            Fare: 1400 )
            FlightList[aircanada.FlightID!] = aircanada
        
        let russianairways = try Flight(FlightID: 03, FlightName: "RussianAirways",
            Fare: 1100 )
            FlightList[russianairways.FlightID!] = russianairways
        
        let jetairways = try Flight(FlightID: 04, FlightName: "JetAirways",
                                            Fare: 1100 )
            FlightList[jetairways.FlightID!] = jetairways
      
        }catch{
            print("Error: \(error)")
        }
    
    }
    
    
    func displayInformation(){
        print("Information Flight")
        Util.drawLine()
        print("\t ID \t\t Name \t\t\t\t Flight \t\t Category \t\t Fare ")
        for(_, value) in self.FlightList.sorted(by: {$0.key < $1.key}){
        Util.drawLine()
            print("\t\(value.flightairlineID!) -----\(value.flightairplaneID!)")
    }
       Util.drawLine()
    }
    
    func searchFlight(flightID : Int) -> Flight?{
        if FlightList[flightID] != nil {
            return FlightList[flightID]! as Flight
        }
    else{
            print("Sorry.... The Flight You Have Entered Is Not available")
            return nil
        }
    }
    func displayFlight(){
        //closure
        for (_,Flight) in FlightList.sorted(by: {$0.key < $1.key}){
            print("\(Flight.displayData())")
        }
    }
}





