//
//  AirlinesEnquiry.swift
//  AirlineReservationSystem
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class AirlinesEnquiry: Airlines{
    var enquiryID : Int?
    var enquirytype : String?
    var enquirytitle : String?
    var enquirydes : String?
    var enquirydate : String?
    
    
    
    override init(){
        self.enquiryID = 0
        self.enquirytype = ""
        self.enquirytitle = ""
        self.enquirydes = ""
        self.enquirydate = ""
        super.init()
    }
    required init(enquiryID : Int, enquirytype : String, enquirytitle : String, enquirydes : String, enquirydate : String,airlinesID : Int,airlinesDes : String,airlinesType : String){
        super.init(airlinesID: airlinesID,airlinesDes: airlinesDes,airlinesType: airlinesType)
        self.enquiryID = enquiryID
        self.enquirytype = enquirytype
        self.enquirytitle = enquirytitle
        self.enquirydes = enquirydes
        self.enquirydate = enquirydate
        
    }
    
    func displayData()  {
        
        super.displayData()
        print("Enquiry ID : \(self.enquiryID ?? 0)")
        print("Enquiry Type : \(self.enquirytype ?? "Unknown")")
        print("Enquiry Title : \(self.enquirytitle ?? "Unknown")")
        print("Enquiry Description : \(self.enquirydes ?? "Unknown")")
        print("Enquiry Date : \(self.enquirydate ?? "Unknown")")
        
    }
    
}
