//
//  Vehicle.swift
//  BuyMyRide
//
//  Created by John Loeppky on 2022-08-17.
//

import Foundation

struct Vehicle: Codable, Identifiable {
    
    var id: Int
    var name: String
    var price: String
    var image: String
}
