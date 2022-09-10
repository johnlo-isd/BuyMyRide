//
//  BuyMyRideModel.swift
//  BuyMyRide
//
//  Created by John Loeppky on 2022-08-17.
//

import Foundation

@MainActor class BuyMyRideModel: ObservableObject {
    
    @Published var vehicles = [Vehicle]()
    @Published var selection: Set<Vehicle> = [] // the representation of view-local data that changes dynamically
    
    init() {
        
        // Create data service instance
        let service = DataService()
        
        // Get the data
        self.vehicles = service.getLocalData()
    }
    
    // Expand selected vehicle details
    func expand(_ vehicle: Vehicle) {
        
        // Keep track of vehicle selected
        if selection.contains(vehicle) {
            selection.remove(vehicle)
        } else {
            selection.insert(vehicle)
        }
    }
}
