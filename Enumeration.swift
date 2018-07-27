//
//  Enumeration.swift
//  AirlineReservationSystem
//
//  Created by MacStudent on 2018-07-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
//var dataHepler = DataHepler()
enum PlanetypeCategory: Int, CaseIterable {
    case AirbusA300 = 1
    case Boeing747 = 2
    case Boeing787Dreamliner = 3
    case IlyushinIl86 = 4
    case None = 5
    
}
enum AirlinesList : String,CaseIterable{
    case AmericanAirlines
    case AirCanada
    case RussianAirlines
    case JetAirways
    case None
}

extension CaseIterable where Self: Hashable {
    static var allCases: [Self] {
        return [Self](AnySequence { () -> AnyIterator<Self> in
            var raw = 0
            var first: Self?
            return AnyIterator {
                let current = withUnsafeBytes(of: &raw) { $0.load(as: Self.self) }
                if raw == 0 {
                    first = current
                } else if current == first {
                    return nil
                }
                raw += 1
                return current
            }
        })
    }
}
