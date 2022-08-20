//
//  BuyMyRideModel.swift
//  BuyMyRide
//
//  Created by John Loeppky on 2022-08-17.
//

import Foundation

@MainActor class BuyMyRideModel: ObservableObject {
    
    @Published var vehicles = [Vehicle]()
    
    init() {
        
        // Create data service instance
        let service = DataService()
        
        // Get the data
        self.vehicles = service.getLocalData()
    }
}
