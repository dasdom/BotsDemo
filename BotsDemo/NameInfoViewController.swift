//
//  NameInfoViewController.swift
//  BotsDemo
//
//  Created by dasdom on 15.08.15.
//  Copyright © 2015 Dominik Hauser. All rights reserved.
//

import UIKit

class NameInfoViewController: UIViewController {
  
  private var nameInfoView: NameInfoView { return view as! NameInfoView }
  
  override func loadView() {
    let contentView = NameInfoView(frame: .zeroRect)
    
    view = contentView
  }
  
    
}
