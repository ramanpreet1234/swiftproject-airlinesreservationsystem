//
//  main.swift
//  AirlineReservationSystem
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var raman = Passenger()
raman.addPassenger()
print(raman.displayData())

//var ASD = Employee()
//ASD.addEmployee()
//print(ASD.displayData())

var  A = Reservation()
var choice = 1
var dataHelper = DataHelper()


while choice != 6{
    print("\n----What would you like to do today !----")
    print("\t 1 : Flight Information ")
    print("\t 2 :Reservation ")
    print("\t 3: Passenger Details ")
    print("\t 4 : Cancel Reservation ")
    print("\t 5 : Exit ")
    print("-----------------------------------------")
    print("Enter you choice please : ")
    choice = (Int)(readLine()!)!
    
    switch choice{
  case 1:
       Reservation.FlightInformation()

  case 2:
        print(dataHelper.displayData())
 // case 3:
   //        Reservation.updateInformation()
  //case 4:
    //    Reservation.cancelReservation()
  case 5:
        exit(0)
   default:
        print("Please enter valid menu option.")
    }
}



