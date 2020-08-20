//
//  IGUser.swift
//
//  Created by Ranjith Kumar on 9/8/17
//  Copyright (c) DrawRect. All rights reserved.
//

import Foundation

public class IGUser: Codable {
  public let internalIdentifier: String
  public let name: String
  public let picture: String
  public let color1: String
  public let color2: String
  
  enum CodingKeys: String, CodingKey {
    case internalIdentifier = "id"
    case name = "name"
    case picture = "picture"
    case color1 = "color1"
    case color2 = "color2"
  }
}
