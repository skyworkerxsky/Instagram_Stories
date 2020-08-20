//
//  IGStoryListCell.swift
//  InstagramStories
//
//  Created by Ranjith Kumar on 9/6/17.
//  Copyright © 2017 DrawRect. All rights reserved.
//

import UIKit
//import YogaKit

final class IGStoryListCell: UICollectionViewCell {
  
  //MARK: - Public iVars
  public var story: IGStory? {
    didSet {
      //            self.profileNameLabel.text = story?.user.name
      if let picture = story?.user.picture {
        self.profileImageView.imageView.setImage(url: picture)
      }
    }
  }
  public var userDetails: (String,String)? {
    didSet {
      if let details = userDetails {
        //                self.profileNameLabel.text = details.0
        self.profileImageView.imageView.setImage(url: details.1)
      }
    }
  }
  
  //MARK: -  Private ivars
  private let profileImageView: IGRoundedView = {
    let roundedView = IGRoundedView()
    roundedView.translatesAutoresizingMaskIntoConstraints = false
    return roundedView
  }()
  
  //MARK: - Overriden functions
  override init(frame: CGRect) {
    super.init(frame: frame)
    loadUIElements()
    installLayoutConstraints()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    fatalError("init(coder:) has not been implemented")
  }
  
//  override func layoutSubviews() {
//    super.layoutSubviews()
//
//    let container = bounds.size
//
//    configureLayout { layout in
//      layout.isEnabled = true
//      layout.width = 100%
//      layout.height = 100%
//    }
//
//    profileImageView.configureLayout { layout in
//      layout.isEnabled = true
//      layout.width = 100%
//      layout.height = 100%
//    }
//
//    yoga.applyLayout(preservingOrigin: true)`
//  }
  
  //MARK:- Private functions
  private func loadUIElements() {
    addSubview(profileImageView)
  }
  
  private func installLayoutConstraints() {

    NSLayoutConstraint.activate([
      profileImageView.widthAnchor.constraint(equalToConstant: self.width),
      profileImageView.heightAnchor.constraint(equalToConstant: self.height),
      profileImageView.igTopAnchor.constraint(equalTo: self.igTopAnchor, constant: 8),
      profileImageView.igCenterXAnchor.constraint(equalTo: self.igCenterXAnchor)])

    layoutIfNeeded()
  }
  
}
