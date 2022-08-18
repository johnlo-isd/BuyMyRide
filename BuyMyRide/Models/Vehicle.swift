//
//  Vehicle.swift
//  BuyMyRide
//
//  Created by John Loeppky on 2022-08-17.
//

import Foundation

struct VehicleJSON: Codable, Identifiable {
    
    var id: String
    var name: String
    var price: String
    var image: String
}
