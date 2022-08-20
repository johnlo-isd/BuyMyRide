//
//  ContentView.swift
//  BuyMyRide
//
//  Created by John Loeppky on 2022-08-12.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: BuyMyRideModel
    
    
    init() {
        // NavigationBarTitle color
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.blue]
    }
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading) {
                
                ScrollView {
                        
                        LazyVStack() {
                            
                            // Loop through the list of vehicles and add them to the screen
                            ForEach(model.vehicles) { vehicle in
                                RowView(name: vehicle.name, price: vehicle.price, image: vehicle.image)
                            }
                        }
                }
            }
            .navigationBarTitle(Constants.appTitle)
            .navigationBarHidden(false)
            .padding()
            .background(ColorManager.backgroundColor)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
