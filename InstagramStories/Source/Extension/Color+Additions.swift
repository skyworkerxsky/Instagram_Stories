//
//  Color+Additions.swift
//  InstagramStories
//
//  Created by Ranjith Kumar on 9/8/17.
//  Copyright © 2017 DrawRect. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
  class func rgb(from hex: Int, alpha: CGFloat = 1.0) -> UIColor {
    let red = CGFloat((hex & 0xFF0000) >> 16) / 0xFF
    let green = CGFloat((hex & 0x00FF00) >> 8) / 0xFF
    let blue = CGFloat(hex & 0x0000FF) / 0xFF
    return UIColor(red: red, green: green, blue: blue, alpha: alpha)
  }
  
  convenience init?(hexRGBA: String?) {
    guard let rgba = hexRGBA, let val = Int(rgba.replacingOccurrences(of: "#", with: ""), radix: 16) else {
      return nil
    }
    self.init(red: CGFloat((val >> 24) & 0xff) / 255.0, green: CGFloat((val >> 16) & 0xff) / 255.0, blue: CGFloat((val >> 8) & 0xff) / 255.0, alpha: CGFloat(val & 0xff) / 255.0)
  }
  convenience init?(hexRGB: String?) {
    guard let rgb = hexRGB else {
      return nil
    }
    self.init(hexRGBA: rgb + "ff")
  }
}
