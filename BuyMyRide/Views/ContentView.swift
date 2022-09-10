//
//  ContentView.swift
//  BuyMyRide
//
//  Created by John Loeppky on 2022-08-12.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: BuyMyRideModel
    
    var body: some View {
        
        VStack {
            
            Text(Constants.appTitle)
                .bold()
                .font(.title)
                .foregroundColor(ColorManager.titleColor)
            
            // List of vehicles
            ScrollView {
                
                // Loop through the list of vehicles and add them to the screen
                ForEach(model.vehicles) { vehicle in
                    RowView(make: vehicle.make, model: vehicle.model, price: vehicle.price, image: vehicle.image, rating: vehicle.rating)
                }
            }
        }
        .padding()
        .background(ColorManager.backgroundColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
