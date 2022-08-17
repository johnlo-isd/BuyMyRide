//
//  ContentView.swift
//  BuyMyRide
//
//  Created by John Loeppky on 2022-08-12.
//

import SwiftUI

struct ContentView: View {
    
//    init() {
//        let navBarAppearance = UINavigationBar.appearance()
//        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: ColorManager.accentColor]
//        navBarAppearance.titleTextAttributes = [.foregroundColor: ColorManager.accentColor]
//    }
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading) {
                
                ScrollView {
                    
                    GeometryReader { geo in
                        
                        // Lazy Vertical Stack so it will only render elements as needed/when they come into frame
                        LazyVStack(alignment: .leading) {
                            
                            // Row
                            HStack {
                                
                                // Car image
                                Image("flying car")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: geo.size.width/2)
                                
                                // Car info
                                VStack(alignment: .leading) {
                                    Text("Mevedes C-Class")
                                        .bold()
                                        .font(Font.custom("Avenir Heavy", size: 16))
                                    
                                    
                                    Text("$85,000")
                                        .font(.footnote)
                                        .foregroundColor(.gray)
                                    
                                    
                                    Spacer()
                                    
                                    Text("Show details")
                                        .bold()
                                        .font(Font.custom("Avenir Heavy", size: 16))
                                        .foregroundColor(.blue)
                                }
                                .padding(.vertical)
                                .frame(width: geo.size.width/2)
                            }
                            .background(.white)
                            
                            // Row
                            HStack {
                                
                                // Car image
                                Image("flying car")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: geo.size.width/2)
                                
                                // Car info
                                VStack(alignment: .leading) {
                                    Text("Mevedes C-Class")
                                        .bold()
                                        .font(Font.custom("Avenir Heavy", size: 16))
                                    
                                    
                                    Text("$85,000")
                                        .font(.footnote)
                                        .foregroundColor(.gray)
                                    
                                    
                                    Spacer()
                                    
                                    Text("Show details")
                                        .bold()
                                        .font(Font.custom("Avenir Heavy", size: 16))
                                        .foregroundColor(.blue)
                                }
                                .padding(.vertical)
                                .frame(width: geo.size.width/2)
                            }
                            .background(.white)
                            
                            // Row
                            HStack {
                                
                                // Car image
                                Image("flying car")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: geo.size.width/2)
                                
                                // Car info
                                VStack(alignment: .leading) {
                                    Text("Mevedes C-Class")
                                        .bold()
                                        .font(Font.custom("Avenir Heavy", size: 16))
                                    
                                    
                                    Text("$85,000")
                                        .font(.footnote)
                                        .foregroundColor(.gray)
                                    
                                    
                                    Spacer()
                                    
                                    Text("Show details")
                                        .bold()
                                        .font(Font.custom("Avenir Heavy", size: 16))
                                        .foregroundColor(.blue)
                                }
                                .padding(.vertical)
                                .frame(width: geo.size.width/2)
                            }
                            .background(.white)
                            
                            // Row
                            HStack {
                                
                                // Car image
                                Image("flying car")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: geo.size.width/2)
                                
                                // Car info
                                VStack(alignment: .leading) {
                                    Text("Mevedes C-Class")
                                        .bold()
                                        .font(Font.custom("Avenir Heavy", size: 16))
                                    
                                    
                                    Text("$85,000")
                                        .font(.footnote)
                                        .foregroundColor(.gray)
                                    
                                    
                                    Spacer()
                                    
                                    Text("Show details")
                                        .bold()
                                        .font(Font.custom("Avenir Heavy", size: 16))
                                        .foregroundColor(.blue)
                                }
                                .padding(.vertical)
                                .frame(width: geo.size.width/2)
                            }
                            .background(.white)
                            
                            // Row
                            HStack {
                                
                                // Car image
                                Image("flying car")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: geo.size.width/2)
                                
                                // Car info
                                VStack(alignment: .leading) {
                                    Text("Mevedes C-Class")
                                        .bold()
                                        .font(Font.custom("Avenir Heavy", size: 16))
                                    
                                    
                                    Text("$85,000")
                                        .font(.footnote)
                                        .foregroundColor(.gray)
                                    
                                    
                                    Spacer()
                                    
                                    Text("Show details")
                                        .bold()
                                        .font(Font.custom("Avenir Heavy", size: 16))
                                        .foregroundColor(.blue)
                                }
                                .padding(.vertical)
                                .frame(width: geo.size.width/2)
                            }
                            .background(.white)
                            
                            // Row
                            HStack {
                                
                                // Car image
                                Image("flying car")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: geo.size.width/2)
                                
                                // Car info
                                VStack(alignment: .leading) {
                                    Text("Mevedes C-Class")
                                        .bold()
                                        .font(Font.custom("Avenir Heavy", size: 16))
                                    
                                    
                                    Text("$85,000")
                                        .font(.footnote)
                                        .foregroundColor(.gray)
                                    
                                    
                                    Spacer()
                                    
                                    Text("Show details")
                                        .bold()
                                        .font(Font.custom("Avenir Heavy", size: 16))
                                        .foregroundColor(.blue)
                                }
                                .padding(.vertical)
                                .frame(width: geo.size.width/2)
                            }
                            .background(.white)
                            
                            // Row
                            HStack {
                                
                                // Car image
                                Image("flying car")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: geo.size.width/2)
                                
                                // Car info
                                VStack(alignment: .leading) {
                                    Text("Mevedes C-Class")
                                        .bold()
                                        .font(Font.custom("Avenir Heavy", size: 16))
                                    
                                    
                                    Text("$85,000")
                                        .font(.footnote)
                                        .foregroundColor(.gray)
                                    
                                    
                                    Spacer()
                                    
                                    Text("Show details")
                                        .bold()
                                        .font(Font.custom("Avenir Heavy", size: 16))
                                        .foregroundColor(.blue)
                                }
                                .padding(.vertical)
                                .frame(width: geo.size.width/2)
                            }
                            .background(.white)
                        }
                        .cornerRadius(15)
                    } // geo
                }
            }
            .navigationBarTitle("Car Listing")
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
