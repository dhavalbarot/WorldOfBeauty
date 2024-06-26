//
//  ProductListView_Test.swift
//  Cart&MartTests
//
//  Created by Dhaval Barot on 03/06/24.
//

import XCTest
import SnapshotTesting
import SwiftUI

@testable import Cart_Mart

final class ProductListView_Test: XCTestCase {

  func testProductListLoadingView() {
    // Arrange
    let mockUseCase = ProductListUseCaseMock()
    mockUseCase.result = .success(ProductList.stub)
    let model = DefaultProductListViewModel(productListUseCase: mockUseCase)
    let productListView = ProductListView(viewModel: model)
    
    // Act
    let productListLoadingView = productListView.getBodyItem(.loading).toVC
    
    // Accert
    assertSnapshot(of: productListLoadingView, as: .image, named: "ProductListLoadingView", testName: "ProductListLoadingTest")
  }
  
  func testProductListDataView() {
    // Arange
    let productList = ProductList.stub.products.map{ ProductPresentationModel(product: $0)}
    
    // Act
    let productListDataView = ProductListGridView(products: productList).toVC
    
    // Assert
    assertSnapshot(of: productListDataView, as: .image, named: "ProductListDataView", testName: "ProductListDataTest")
  }
  
  func testErrorView() {
    // Arrange
    let contentModel = ContentModel(imageName: SystemImageName.basket.rawValue, title: StringConstants.somethingWentWrong, message: StringConstants.tryAgainLater)
    
    // Act
    let errorView = ErrorContentView(contentModel: contentModel).toVC
    
    // Assert
    assertSnapshot(of: errorView, as: .image, named: "ErrorContentView", testName: "ErrorContentViewTest")
  }
  
  func testNavigationBarView() {
    // Act
    let navigationView = NavigationBarView().toVC
    
    // Assert
    assertSnapshot(of: navigationView, as: .image, named: "ProductListNavigationBarView", testName: "ProductListNavigationBarTest")
  }
}
