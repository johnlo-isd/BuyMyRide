//
//  CardView.swift
//  BuyMyRide
//
//  Created by John Loeppky on 2022-08-18.
//

import SwiftUI

struct CardView: View {
    
    var make: String
    var model: String
    var price: String
    var image: String
    var rating: Int
    
    var body: some View {
        
        // Row
        ZStack(alignment: .leading) {
            
            // Background
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(Constants.cornerRadius)
                .aspectRatio(CGSize(width: 335, height: 130), contentMode: .fit)
            
            HStack {
                
                // Vehicle image
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 175, alignment: .leading)
                    .clipped()
                    .cornerRadius(Constants.cornerRadius, corners: [.topLeft, .bottomLeft])
                
                // Vehicle info
                VStack(alignment: .leading) {
                    
                    Text(make + " " + model)
                        .bold()
                        .font(Font.custom(Constants.font, size: 16))
                        .foregroundColor(ColorManager.titleColor)
                    
                    Text(price)
                        .font(.footnote)
                        .foregroundColor(.gray)
                    
                    // Rating
                    HStack {
                        
                        // The number of stars rated
                        ForEach (1..<rating+1) { i in
                            Image(systemName: "star.fill")
                                .font(.footnote)
                                .foregroundColor(ColorManager.titleColor)
                                .padding(.horizontal, -5)
                        }
                        
                        // The number of stars not rated
                        if rating < 5 {
                            ForEach(0..<5-rating) { i in
                                Image(systemName: "star")
                                    .font(.footnote)
                                    .padding(.horizontal, -5)
                            }
                        }
                    }
                    
                    Spacer()
                    
                    Text(Constants.ShowDetails)
                        .bold()
                        .font(Font.custom(Constants.font, size: 16))
                        .foregroundColor(.blue)
                }
                .padding(.vertical, 5)
                .padding(.trailing, 5)
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
        CardView(make: "", model: "XR-7", price: "$1,025,000", image: "xr-7", rating: 4)
    }
}
