//
//  LogoView.swift
//  Cart&Mart
//
//  Created by Dhaval Barot on 29/05/24.
//

import SwiftUI

struct LogoView: View {
  // MARK: - Body
  var body: some View {
    HStack(spacing: 4) {
      Text("Cart".uppercased())
        .font(.title3)
        .fontWeight(.black)
        .foregroundColor(.accentColor)
      
      Image("AndLogoGreen")
        .renderingMode(.template)
        .resizable()
        .scaledToFit()
        .foregroundColor(.accentColor)
        .frame(width: 30, height: 30, alignment: .center)
      
      Text("Mart".uppercased())
        .font(.title3)
        .fontWeight(.black)
        .foregroundColor(.accentColor)
    }
  }
}

// MARK: - Preview
struct LogoView_Previews: PreviewProvider {
  static var previews: some View {
    LogoView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
