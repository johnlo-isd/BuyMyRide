//
//  DataService.swift
//  BuyMyRide
//
//  Created by John Loeppky on 2022-08-18.
//

import Foundation

class DataService {
    
    func getLocalData() -> [Vehicle] {
        
        // MARK: Parse Local JSON File
        
        // Get a url path to the JSON file
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        // Check if pathstring is not nil, otherwise...
        guard pathString != nil else {
            
            // Nil so return empty type of VehicleJSON
            print("Error with path string")
            return [Vehicle]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        // Create data object
        
        // Error handling
        do {
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                let vehicleData = try decoder.decode([Vehicle].self, from: data) // using .self to refer to that data type
                
                // Return the vehicle
                return vehicleData
                
            // Error with parsing JSON
            } catch {
                print("Error parsing JSON")
                print(error)
            }

        // Error getting data
        } catch {
            print("Error getting data")
            print(error)
        }
        
        // Things didn't work, so return an empty array of Vehicle
        return [Vehicle]()
    }
}
