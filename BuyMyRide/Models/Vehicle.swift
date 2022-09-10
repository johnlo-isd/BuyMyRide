//
//  Vehicle.swift
//  BuyMyRide
//
//  Created by John Loeppky on 2022-08-17.
//

import Foundation

struct Vehicle: Codable, Identifiable {
    
    var id: Int
    var make: String
    var model: String
    var price: String
    var image: String
    var rating: Int
    var pros: [String]?
    var cons: [String]?
}
