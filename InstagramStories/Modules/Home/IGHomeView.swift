//
//  IGHomeView.swift
//  InstagramStories
//
//  Created by  Boominadha Prakash on 01/11/17.
//  Copyright © 2017 DrawRect. All rights reserved.
//

import Foundation
import UIKit
import YogaKit

class IGHomeView: UIView {
  
  //MARK: - iVars
  lazy var layout: UICollectionViewFlowLayout = {
    let flowLayout = UICollectionViewFlowLayout()
    flowLayout.scrollDirection = .horizontal
    flowLayout.itemSize = CGSize(width: 200, height: 200)
    return flowLayout
  }()
  lazy var collectionView: UICollectionView = {
    let cv = UICollectionView.init(frame: CGRect.zero, collectionViewLayout: layout)
    cv.backgroundColor = .white
    cv.showsVerticalScrollIndicator = false
    cv.showsHorizontalScrollIndicator = false
    cv.register(IGStoryListCell.self, forCellWithReuseIdentifier: IGStoryListCell.reuseIdentifier)
    cv.register(IGAddStoryCell.self, forCellWithReuseIdentifier: IGAddStoryCell.reuseIdentifier)
    cv.translatesAutoresizingMaskIntoConstraints = false
    return cv
  }()
  
  //MARK: - Overridden functions
  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = UIColor.rgb(from: 0xEFEFF4)
    createUIElements()
    
  }
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    fatalError("init(coder:) has not been implemented")
  }
  
  //MARK: - Private functions
  private func createUIElements(){
    addSubview(collectionView)
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    
    configureLayout { layout in
      layout.isEnabled = true
      layout.width = 375
      layout.height = 100
    }
    
    collectionView.configureLayout { layout in
      layout.isEnabled = true
      layout.width = 375
      layout.height = 100
    }
    
    yoga.applyLayout(preservingOrigin: true)
  }
}
