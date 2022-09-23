//
//  CardView.swift
//  BuyMyRide
//
//  Created by John Loeppky on 2022-08-18.
//

import SwiftUI

struct CardView: View {
    
    @EnvironmentObject var model: BuyMyRideModel
    let vehicle: Vehicle
    let isExpanded: Bool
    @Binding var selected: Int?
    
    var body: some View {
        
        HStack {
            
            // Card
            ZStack(alignment: .leading) {
                
                // Card background
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
                            .font(Font.system(size: Constants.headline, weight: .semibold))
                            .foregroundColor(ColorManager.titleColor)
                        
                        Text(vehicle.price)
                            .font(Font.system(size: Constants.footnote))
                            .foregroundColor(ColorManager.lightColor)
                        
                        // Rating
                        HStack {
                            
                            // The number of stars rated
                            ForEach (1..<vehicle.rating+1, id: \.self) { i in
                                Image(systemName: "star.fill")
                                    .font(Font.system(size: Constants.caption2))
                                    .padding(.horizontal, -5)
                            }
                            .foregroundColor(ColorManager.titleColor)
                            
                            // The number of stars not rated
                            if vehicle.rating < 5 {
                                ForEach(0..<5-vehicle.rating, id: \.self) { i in
                                    Image(systemName: "star")
                                        .font(Font.system(size: Constants.caption2))
                                        .padding(.horizontal, -5)
                                }
                                .foregroundColor(ColorManager.lightColor)
                            }
                        }
                        
                        // Pros and Cons
                        if selected == vehicle.id {
                            expandedView()
                        }
                        
                        Spacer()
                        
                        Text(Constants.ShowDetails)
                            .bold()
                            .font(Font.system(size: Constants.subhead))
                            .foregroundColor(.blue)
                    }
                    .padding(.vertical, 5)
                    .padding(.trailing, 5)
                }
            }
        }
        .contentShape(Rectangle())
    }
    
    @ViewBuilder
    func expandedView() -> some View {
        
        // Are there any Pros
        if vehicle.pros.isEmpty == false {
            Text(Constants.pros + ":")
                .bold()
                .font(Font.system(size: Constants.footnote))
            
            VStack(alignment: .leading) {
                
                // Loop through the pros
                ForEach(vehicle.pros, id: \.self) { item in
                    HStack(alignment: .top) {
                        Text(" •")
                        Text(item)
                    }
                    .font(Font.system(size: Constants.footnote))
                }
            }
        }
        
        // Are there any Cons
        if vehicle.cons.isEmpty == false {
            Text(Constants.cons + ":")
                .bold()
                .font(Font.system(size: Constants.footnote))
            
            VStack(alignment: .leading) {
                
                // Loop through the cons
                ForEach(vehicle.cons, id: \.self) { item in
                    HStack(alignment: .top) {
                        Text(" •")
                        Text(item)
                    }
                    .font(Font.system(size: Constants.footnote))
                }
            }
        }
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
        CardView(vehicle: Vehicle(id: 0, make: "", model: "", price: "", image: "", rating: 3, pros: [""], cons: [""]), isExpanded: true, selected: Binding.constant(1))
    }
}
