//
//  NameInfoViewControllerTests.swift
//  BotsDemo
//
//  Created by dasdom on 15.08.15.
//  Copyright © 2015 Dominik Hauser. All rights reserved.
//

import XCTest
@testable import BotsDemo

class NameInfoViewControllerTests: XCTestCase {
  
  var viewController: NameInfoViewController!
  
  override func setUp() {
    super.setUp()

    viewController = NameInfoViewController()
    
    let _ = viewController.view
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testView_IsOfTypeNameInfoView() {
    XCTAssertTrue(viewController.view is NameInfoView)
  }
  
  func testView_HasTextField() {
    guard let nameInfoView = viewController.view as? NameInfoView else { XCTFail(); return }
    
    let textField = nameInfoView.textField
    
    XCTAssertNotNil(textField.superview)
  }

  func testView_HasButton() {
    guard let nameInfoView = viewController.view as? NameInfoView else { XCTFail(); return }
    
    let button = nameInfoView.button
    
    XCTAssertNotNil(button.superview)
  }
}
