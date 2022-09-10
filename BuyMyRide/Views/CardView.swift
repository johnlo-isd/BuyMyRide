//
//  CardView.swift
//  BuyMyRide
//
//  Created by John Loeppky on 2022-08-18.
//

import SwiftUI

struct CardView: View {
    
    var vehicle: Vehicle
    let isExpanded: Bool
    
    var body: some View {
        
        HStack {
            
            // Card
            ZStack(alignment: .leading) {
                
                // Background
                Rectangle()
                    .foregroundColor(.white)
                    .cornerRadius(Constants.cornerRadius)
                
                HStack {
                    
                    // Vehicle image
                    Image(vehicle.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: 175, minHeight: 125)
                        .clipped()
                        .cornerRadius(Constants.cornerRadius, corners: [.topLeft, .bottomLeft])
                    
                    // Vehicle info
                    VStack(alignment: .leading) {
                        
                        Text(vehicle.make + " " + vehicle.model)
                            .bold()
                            .font(Font.custom(Constants.fontH1, size: Constants.fontH1Size))
                            .foregroundColor(ColorManager.titleColor)
                        
                        Text(vehicle.price)
                            .font(.footnote)
                            .foregroundColor(ColorManager.lightColor)
                        
                        // Rating
                        HStack {
                            
                            // The number of stars rated
                            ForEach (1..<vehicle.rating+1) { i in
                                Image(systemName: "star.fill")
                                    .font(.footnote)
                                    .foregroundColor(ColorManager.titleColor)
                                    .padding(.horizontal, -5)
                            }
                            
                            // The number of stars not rated
                            if vehicle.rating < 5 {
                                ForEach(0..<5-vehicle.rating) { i in
                                    Image(systemName: "star")
                                        .font(.footnote)
                                        .padding(.horizontal, -5)
                                }
                            }
                        }
                        .font(.system(size: 9))
                        
                        // Pros and Cons
                        
                        if isExpanded {
                            
                            // Are there any Pros
                            if vehicle.pros != nil {
                                Text(Constants.pros + ":")
                                    .bold()
                                    .font(.footnote)
                                
                                VStack(alignment: .leading) {
                                    
                                    // Loop through the pros
                                    ForEach(vehicle.pros!, id: \.self) { item in
                                        HStack(alignment: .top) {
                                            Text(" •")
                                            Text(item)
                                        }
                                        .font(.footnote)
                                    }
                                }
                            }
                            
                            // Are the any Cons
                            if vehicle.cons != nil {
                                Text(Constants.cons + ":")
                                    .bold()
                                    .font(.footnote)
                                
                                VStack(alignment: .leading) {
                                    
                                    // Loop through the cons
                                    ForEach(vehicle.cons!, id: \.self) { item in
                                        HStack(alignment: .top) {
                                            Text(" •")
                                            Text(item)
                                        }
                                        .font(.footnote)
                                    }
                                }
                            }
                            
                            // There are no Pros or Cons
                            if vehicle.pros == nil && vehicle.cons == nil {
                                Text(Constants.noDetails)
                                    .font(.footnote)
                            }
                        }
                        
                        Spacer()
                        
                        Text(Constants.ShowDetails)
                            .bold()
                            .font(Font.system(size: Constants.fontH3Size))
                            .foregroundColor(.blue)
                    }
                    .padding(.vertical, 5)
                    .padding(.trailing, 5)
                }
            }
        }
        .contentShape(Rectangle())
    }
}

// Extend View so we can apply radius to the individual corners of an object
extension View {
    
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

// Struct so individual corner radius can be done
struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(vehicle: Vehicle(id: 0, make: "", model: "", price: "", image: "", rating: 3), isExpanded: true)
    }
}
