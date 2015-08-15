//
//  NameInfoView.swift
//  BotsDemo
//
//  Created by dasdom on 15.08.15.
//  Copyright © 2015 Dominik Hauser. All rights reserved.
//

import UIKit

class NameInfoView: UIView {
  
  let textField: UITextField
  let button: UIButton
  
  override init(frame: CGRect) {
    
    textField = UITextField(frame: .zeroRect)
    textField.translatesAutoresizingMaskIntoConstraints = false
    
    button = UIButton(type: .System)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Reverse", forState: .Normal)
    
    super.init(frame: frame)
    
    addSubview(textField)
    
    let views = ["textField": textField]
    var layoutConstraints = [NSLayoutConstraint]()
    
    layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("|-[textField]-|", options: [], metrics: nil, views: views)
    layoutConstraints.append(textField.heightAnchor.constraintEqualToConstant(30))
    
    NSLayoutConstraint.activateConstraints(layoutConstraints)
    
  }

  required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
  
}
