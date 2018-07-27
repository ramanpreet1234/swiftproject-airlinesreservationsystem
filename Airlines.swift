//
//  Airlines.swift
//  AirlineReservationSystem
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Airlines {
    
    var airlinesID : Int?
    var airlinesDes : String?
    var airlinesType : String?
    
    
    var AirlinesID : Int? {
        get{ return self.airlinesID }
        set{ self.airlinesID = newValue}
    }
    var AirlinesDes : String? {
        get{ return self.airlinesDes }
        set{ self.airlinesDes = newValue}
    }
    var AirlinesType : String? {
        get{ return self.airlinesType }
        set{ self.airlinesType = newValue}
    }
    
    
    init(){
        self.airlinesID = 0
        self.airlinesDes = ""
        self.airlinesType = ""
        
    }
    
    init(airlinesID: Int, airlinesDes: String, airlinesType: String){
        self.airlinesID = airlinesID
        self.airlinesDes = airlinesDes
        self.airlinesType = airlinesType
        
    }
    
    func displayData() -> String {
        var returnData = ""
        
        returnData += "\n Airlines ID : \(self.airlinesID ?? 0)"
        returnData += "\n Airlines Description : \(self.airlinesDes ?? "" )"
        returnData += "\n Airlines Type : \(self.airlinesType ?? "" )"
        
        return returnData
    }
    
    func newAirlinetype(){
        print("Enter Airlines ID : ")
        self.airlinesID = (Int)(readLine()!)
        
        
        
        print("Enter Airlines Description : ")
        self.airlinesDes = readLine()
        print("Enter Airlines Type : ")
        self.airlinesType = readLine()
        // print("Please choose from the following product categories")
        //for airlinesType in String.allCases{
        //    print("Enter \(airlinesType.rawValue) for \(airlinesType)")
    }
    // let choice = (Int)(readLine()!) ?? 5
    // self.airlinesType = String(rawValue: choice)
    
}
