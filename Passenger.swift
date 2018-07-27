//
//  Passenger.swift
//  AirlineReservationSystem
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Passenger : IDisplay{
    private var passengerID : Int?
    private var passengerName : String?
    private var passengerPassportNumber : String?
    private var address : String?
    private var email : String?
    private var mobile : String?
    private var birthdate : String?
    
    
    //default initializer
    init(){
        self.passengerID = 0
        self.passengerName = ""
        self.passengerPassportNumber = ""
        self.address = ""
        self.email = ""
        self.mobile = ""
        self.birthdate = ""
        
        
    }
    
    //parameterized initializer
    init(passengerID: Int, passengerName: String, address: String, email: String, passengerPassportNumber: String, mobile: String, birthdate: String){
        
        self.passengerID = passengerID
        self.passengerName = passengerName
        self.address = address
        self.email = email
        self.mobile = mobile
        self.passengerPassportNumber = passengerPassportNumber
        self.birthdate = birthdate
    }
    
    //stored property
    var PassengerID : Int? {
        get{ return self.passengerID}
        set{ self.passengerID = newValue}
    }
    var PassengerName : String?{
        get{return self.passengerName}
        set{self.passengerName = newValue}
    }
    var Passengerpassportnumber : String?{
        get{return self.passengerPassportNumber}
        set{self.passengerPassportNumber = newValue}
    }
    
    
    var Address : String?{
        get{return self.address}
        set{self.address = newValue}
    }
    var Email : String?{
        get{return self.email}
        set{self.email = newValue}
    }
    var Mobile : String?{
        get{return self.mobile}
        set{self.mobile = newValue}
    }
    var Birthdate : String?{
        get{return self.birthdate}
        set{self.birthdate = newValue}
        
    }
    
    func displayData() -> String{
        var returnData = ""
        
        if self.passengerID != nil {
            returnData += "\n Passenger ID : \(self.passengerID ?? 0)"
        }
        
        if self.passengerName != nil {
            returnData += "\n Passenger Name : \(self.passengerName ?? "Unknown")"
        }
        if self.passengerPassportNumber != nil {
            returnData += "\n Passenger Passport Number : \(self.passengerPassportNumber ?? "Unknown")"
        }
        if self.address != nil {
            returnData += "\n Passenger address : \(self.address ?? "Unknown")"
        }
        if self.email != nil {
            returnData += "\n Passenger Email : \(self.email ?? "email@mad.com")"
        }
        if self.mobile != nil {
            returnData += "\n  Passenger Mobile : \(self.mobile ?? "")"
        }
        if self.birthdate != nil {
            returnData += "\n  Passenger Birthdate : \(self.birthdate ?? "")"
        }
        return returnData
    }
    
    func addPassenger(){
        print("Enter Passenger ID : ")
        self.passengerID = (Int)(readLine()!)
        print("Enter Passenger Name : ")
        self.passengerName = readLine()!
        print("Enter Passenger Passport Number : ")
        self.passengerPassportNumber = readLine()!
        print("Enter Passenger Email : ")
        self.email = readLine()!
        print("Enter Passenger Address : ")
        self.address = readLine()!
        print("Enter Passenger Mobile : ")
        self.mobile = readLine()!
        print("Enter Passenger Birthdate : ")
        self.birthdate = readLine()!
        
    }
}
