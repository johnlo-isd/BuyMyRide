//
//  BuyMyRideModel.swift
//  BuyMyRide
//
//  Created by John Loeppky on 2022-08-17.
//

import Foundation

class BuyMyRideModel: ObservableObject {
    
    @Published var vehicles = [Vehicle]()
    @Published var selection: Set<Vehicle> = [] // local data that changes dynamically
    
    init() {
        
        // Create data service instance
        let service = DataService()
        
        // Get the data
        self.vehicles = service.getLocalData()
    }
    
    // Expand/Collapse selected vehicle details
    func expandCollapse(_ vehicle: Vehicle) {
        
        // Keep track of vehicle selected
        if selection.contains(vehicle) {
            // Collapse
            selection.remove(vehicle)
        } else {
            // Expand
            selection.insert(vehicle)
        }
    }
}
