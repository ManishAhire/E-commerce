//
//  FeaturedProductsView.swift
//  E-Commerce
//
//  Created by Manish on 29/05/25.
//

import SwiftUI

struct Product {
    var id: Int
    var imageURL: String
    var title: String
    var price: Double
}

struct ProductView : View {
    
    let product: Product
    
    var body: some View {
        VStack {
            
            Image(product.imageURL)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 60)
            
            Text(product.title)
                .font(.system(size: 15))
            
            Text("Price: INR \(product.price)")
                .font(.system(size: 15, weight: .semibold))
        }
        .padding(2)
    }
}
struct FeaturedProductsView: View {
    
    let products: [Product] = [
        
        Product(id: 1, imageURL: "1", title: "Product 1", price: 10.51),
        Product(id: 2, imageURL: "2", title: "Product 2", price: 20.51),
        Product(id: 3, imageURL: "3", title: "Product 3", price: 30.51),
        Product(id: 4, imageURL: "4", title: "Product 4", price: 40.51)
    ]
    var body: some View {
        ScrollView {
            HStack {
                
                ForEach(products, id: \.id) { prodcut in
                    ProductView(product: prodcut)
                }
            }
        }
    }
}

#Preview {
    FeaturedProductsView()
}
