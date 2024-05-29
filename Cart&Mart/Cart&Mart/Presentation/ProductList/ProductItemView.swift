//
//  ProductItemView.swift
//  Cart&Mart
//
//  Created by Dhaval Barot on 29/05/24.
//

import SwiftUI

struct ProductItemView: View {
  
  // MARK: - Property
  let product: Product
  
  // MARK: - Body
  var body: some View {
    ZStack(alignment: .center, content: {
      VStack(alignment: .leading, spacing: 6, content: {
        // PHOTO
        ZStack {
          Rectangle()
            .fill(UIColor.productColor(product.id))
            .cornerRadius(12)
            .aspectRatio(contentMode: .fill)
          AsyncImage(url: URL(string: product.thumbnail)) { image in
            image
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(maxWidth: 150)
          } placeholder: {
            Image(systemName: "cart")
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(maxWidth: 50)
              .font(.system(size: 30))
          }
        }
        
        // NAME
        Text(product.title)
          .font(.subheadline)
          .fontWeight(.black)
          .multilineTextAlignment(.leading)
          .frame(height: 40)
          .lineLimit(2)
        
        // PRICE
        Text(product.price, format: .currency(code: "USD"))
          .fontWeight(.semibold)
          .foregroundColor(.gray)
          .multilineTextAlignment(.leading)
      })
      .padding(12)
    })
    .background(Color.white)
    .cornerRadius(12)
  }
}

// MARK: - Preview
struct ProductItemView_Previews: PreviewProvider {
  static var previews: some View {
    ProductItemView(product: sampleProduct)
      .previewLayout(.fixed(width: 200, height: 300))
      .background(Color.red)
  }
}

