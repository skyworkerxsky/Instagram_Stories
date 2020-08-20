//
//  IGRoundedView.swift
//  IGRoundedView
//
//  Created by Ranjith Kumar on 12/5/17.
//  Copyright © 2017 Dash. All rights reserved.
//

import Foundation
import UIKit
import YogaKit

struct Attributes {
  let borderWidth: CGFloat = 2.0
  let borderColor = UIColor.white
  let backgroundColor = IGTheme.redOrange
}

class IGRoundedView: UIView {
  
  private var attributes: Attributes = Attributes()
  
  lazy var imageView: UIImageView = {
    let iv = UIImageView()
    return iv
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    clipsToBounds = true
    backgroundColor = attributes.backgroundColor
    addSubview(imageView)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    
    let container = bounds.size
    
    configureLayout { layout in
      layout.isEnabled = true
      layout.width = YGValue(container.width)
      layout.height = YGValue(container.height)
    }
    
    imageView.configureLayout { layout in
      layout.isEnabled = true
      layout.width = 100%
      layout.height = 100%
    }
    
    yoga.applyLayout(preservingOrigin: true)
  }
}

//extension IGRoundedView {
//  func enableBorder(enabled: Bool = true) {
//    if enabled {
//      layer.borderColor = UIColor.clear.cgColor
//      layer.borderWidth = 0
//    } else {
//      layer.borderColor = attributes.borderColor.cgColor
//      layer.borderWidth = attributes.borderWidth
//    }
//  }
//}
