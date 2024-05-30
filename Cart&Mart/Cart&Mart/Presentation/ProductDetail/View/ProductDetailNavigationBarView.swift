//
//  ProductDetailNavigationBarView.swift
//  Cart&Mart
//
//  Created by Dhaval Barot on 30/05/24.
//

import SwiftUI

struct ProductDetailNavigationBarView: View {
  
  // MARK: - PROPERTY
  @EnvironmentObject private var navigationManager: NavigationManager
    
  // MARK: - BODY
  var body: some View {
    HStack {
      Button(action: {
        withAnimation(.easeIn) {
          navigationManager.pop()
        }
      }, label: {
        Image(systemName: "chevron.left")
          .font(.title)
          .foregroundColor(.white)
      })
      
      Spacer()
      
      Button(action: {}, label: {
        Image(systemName: "cart")
          .font(.title)
          .foregroundColor(.white)
      })
    }
    .padding(.horizontal)
  }
}

// MARK: - PREVIEW

struct ProductDetailNavigationBarView_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailNavigationBarView()
      .previewLayout(.sizeThatFits)
      .padding()
      .background(Color.gray)
  }
}


#Preview {
    ProductDetailNavigationBarView()
}