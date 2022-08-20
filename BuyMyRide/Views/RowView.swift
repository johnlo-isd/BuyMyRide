//
//  RowView.swift
//  BuyMyRide
//
//  Created by John Loeppky on 2022-08-18.
//

import SwiftUI

struct RowView: View {
    
    var name: String
    var price: String
    var image: String
    
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
                    .frame(width: 175)
                    .clipped()
                    .cornerRadius(Constants.cornerRadius, corners: [.topLeft, .bottomLeft])
                
                // Vehicle info
                VStack(alignment: .leading) {
                    
                    Text(name)
                        .bold()
                        .font(Font.custom(Constants.font, size: 16))
                    
                    Text(price)
                        .font(.footnote)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Text(Constants.ShowDetails)
                        .bold()
                        .font(Font.custom(Constants.font, size: 16))
                        .foregroundColor(.blue)
                }
                .padding(.vertical)
            }
            .clipped()
        }
    }
}

// Extend View so we can apply radius to the individual corners of an object
extension View {
    
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

// Struct so indidual corner radius can be done
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
        RowView(name: "XR-7", price: "$1,025,000", image: "xr-7")
    }
}
