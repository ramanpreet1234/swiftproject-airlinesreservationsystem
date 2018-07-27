//
//  Employee.swift
//  AirlineReservationSystem
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Employee {
    var empID : Int?
    var empName : String?
    var empEmail : String?
    var empMob : String?
    var empAdd : String?
    var empDes : String?
    var empSin : String?
    
    
    init(){
        self.empID = 0
        self.empName = ""
        self.empEmail = ""
        self.empMob = ""
        self.empAdd = ""
        self.empDes = ""
        self.empSin = ""
    }
    init(empID : Int, empName : String, empEmail : String, empMob : String, empAdd : String, empDes : String, empSin : String){
        self.empID = empID
        self.empName = empName
        self.empEmail = empEmail
        self.empMob = empMob
        self.empAdd = empAdd
        self.empDes = empDes
        self.empSin = empSin
    }
    //stored property
    var EmployeeID : Int? {
        get{ return self.empID}
        set{ self.empID = newValue}
    }
    var EmployeeName : String?{
        get{return self.empName}
        set{self.empName = newValue}
    }
    var EmployeeEmail : String?{
        get{return self.empEmail}
        set{self.empEmail = newValue}
    }
    
    
    var EmployeeMobile : String?{
        get{return self.empMob}
        set{self.empMob = newValue}
    }
    var EmployeeAddress : String?{
        get{return self.empAdd}
        set{self.empAdd = newValue}
    }
    var EmployeeDescription : String?{
        get{return self.empDes}
        set{self.empDes = newValue}
    }
    var EmployeeSin : String?{
        get{return self.empSin}
        set{self.empSin = newValue}
    }
    
    func display() -> String{
        var returnData = ""
        
        if self.empID != nil {
            returnData += "\n Employee ID : \(self.empID ?? 0)"
        }
        
        if self.empName != nil {
            returnData += "\n Employee Name : \(self.empName ?? "Unknown")"
        }
        if self.empEmail != nil {
            returnData += "\n Employee Email : \(self.empEmail ?? "Unknown")"
        }
        if self.empMob != nil {
            returnData += "\n Employee Mobile : \(self.empMob ?? "Unknown")"
        }
        if self.empAdd != nil {
            returnData += "\n Employee Address : \(self.empAdd ?? "email@mad.com")"
        }
        if self.empDes != nil {
            returnData += "\n  Employee Description : \(self.empDes ?? "")"
        }
        if self.empSin != nil {
            returnData += "\n  Employee Sin : \(self.empSin ?? "")"
        }
        return returnData
    }
    
    func displayData()  {
        
        
        print("Emp ID : \(self.empID ?? 0)")
        print("Emp Name : \(self.empName ?? "Unknown")")
        print("Emp Email : \(self.empEmail ?? "Unknown")")
        print("Emp Mob : \(self.empMob ?? "Unknown")")
        print("Emp Add : \(self.empAdd ?? "Unknown")")
        print("Emp Des : \(self.empDes ?? "Unknown")")
        print("Emp Sin : \(self.empSin ?? "Unknown")")
    }
    
}
