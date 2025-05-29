//
//  CarouselView.swift
//  E-Commerce
//
//  Created by Manish on 09/05/25.
//

import SwiftUI

struct CarouselView: View {
    
    private var images: [String] = ["1", "2", "3", "4"]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(images, id: \.self) { text in
                    Image(text)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 350, height: 200, alignment: .center)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .scrollTransition(.interactive, axis: .horizontal) { effect, phase in
                            effect
                                .scaleEffect(phase.isIdentity ? 1.0 : 0.95)
                        }
                }
            }
            .scrollTargetLayout()
        }
        .frame(height: 250)
        .contentMargins(5, for: .scrollContent)
        .scrollTargetBehavior(.viewAligned)
    }
}

#Preview {
    CarouselView()
}
