//
//  ContentView.swift
//  BuyMyRide
//
//  Created by John Loeppky on 2022-08-12.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: BuyMyRideModel
    @State var isExpanded: Bool = false
    @State var selected: Int? = 0 // to have the first card expanded by default when app starts
    
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
                    
                    CardView(vehicle: vehicle, isExpanded: model.selection.contains(vehicle), selected: $selected)
                        .onTapGesture {
                            // Animate the expanding/collapsing of the card when it's tapped
                            withAnimation {
                                selected = selected == vehicle.id ? nil : vehicle.id
                            }
                        }
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
