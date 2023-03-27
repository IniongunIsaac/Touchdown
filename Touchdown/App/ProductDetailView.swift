//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Isaac Iniongun on 27/03/2023.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            //Navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            //Header
            HeaderDetailView()
                .padding(.horizontal)
            
            //Detail Top Part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            //Detail Bottom Part
            VStack(alignment: .center, spacing: 0) {
                //Ratings + Sizes
                RatingsSizesDetailView()
                    .padding(.top, -25)
                    .padding(.bottom, 10)
                
                //Description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                //Quantity + Favorites
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                
                //Add to Cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
            }
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        }
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue
            )
            .ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}
