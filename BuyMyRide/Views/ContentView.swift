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
                .font(Font.system(size: Constants.largeTitle))
                .foregroundColor(ColorManager.titleColor)
            
            // List of vehicles
            ScrollView {
                
                // Loop through the list of vehicles and add them to the screen
                ForEach(model.vehicles) { vehicle in
                    
                    CardView(vehicle: vehicle, isExpanded: model.selection.contains(vehicle))
                        .onTapGesture {
                            // Expand/collapse the card when it's tapped
                            model.expandCollapse(vehicle)
                        }
                        // Animate the expand/collapse
                        .animation(.easeInOut(duration: 0.2), value: model.selection)
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
