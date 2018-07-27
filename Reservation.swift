//
//  Reservation.swift
//  AirlineReservationSystem
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Reservation : Passenger {
    var resID : Int?
    var respassid: String?
    var resflightid : String?
    var resdate: String?
    var resseatno: String?
    var resstatus : String?
    var resmealtype: String?
    
    override  init(){
        self.resID = 0
        self.respassid = ""
        self.resflightid = ""
        self.resdate = ""
        self.resseatno = ""
        self.resstatus = ""
        self.resmealtype = ""
        super.init()
    }
    required init(resID : Int, respassid : String, resflightid : String, resdate : String, resseatno : String, resstatus : String, resmealtype : String,passengerID : Int, passengerName: String,passengerPassportNumber: String,address: String,email: String,mobile: String,birthdate: String)
    {
        super.init(passengerID: passengerID, passengerName: passengerName, address: address, email: email, passengerPassportNumber: passengerPassportNumber, mobile: mobile, birthdate: birthdate)
        self.resID = resID
        self.respassid = respassid
        self.resflightid = resflightid
        self.resdate = resdate
        self.resseatno = resseatno
        self.resstatus = resstatus
        self.resmealtype = resmealtype
    }
    
    func displayData()  {
        
        super.displayData()
        print("Reservation ID : \(self.resID ?? 0)")
        print("Reservation Password ID : \(self.respassid ?? "Unknown")")
        print("Reservation Flight ID : \(self.resflightid ?? "Unknown")")
        print("Reservation Date : \(self.resdate ?? "Unknown")")
        print("Reservation Seat Number : \(self.resseatno ?? "Unknown")")
        print("Reservation Status : \(self.resstatus ?? "Unknown")")
        print("Reservation Meal Type : \(self.resmealtype ?? "Unknown")")
    }
    
}



func addInformation(){
    dataHelper.displayFlight()
    print("Please enter passenger ID to choose any flight from the list : ")
    let selectedPassengerID : Int = (Int)(readLine()!)!
    
    if let selectedFlight = dataHelper.displayFlight(passengerID: selectedPassengerID){
        self.ReservationID = selectedFlight
        self.FlightDate = Date()
        
        print("How many seats do you want to reserve ? : ")
        let flight : Int = (Int)(readLine()!) ?? 1
        
        self.reservationFlight += [(flightID: selectedFlightID, flight: selectedFlight)]
        self.FlightStatus = FlightStatusList.Reserved
        
    }else{
        print("Sorry...The flight you choose is unavailable")
    }
}

func canceLReservation(){
    if !flightInformation.isEmpty {
        print("Review your flightInformation \n \(self.displayData())")
        
        print("Please enter flight ID to remove from the reservation : ")
        let selectedFlightID : Int = (Int)(readLine()!)!
        var flightIndex = -1
        
        for (index, item) in self.reservationFlight.enumerated(){
            if (item.productID == selectedFlightID){
                flightIndex = index
            }
        }
        
        if flightIndex != -1{
            self.reservationFlight.remove(at: flightIndex)
            print("The reservation is cancelled")
        }
    }else{
        print("You have no reserved seat in flight")
    }
}






