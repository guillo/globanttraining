//
//  MainCourseCellViewTableViewCell.swift
//  Training
//
//  Created by Mario Guillermo Boaglio on 5/8/17.
//  Copyright © 2017 Mario Guillermo Boaglio. All rights reserved.
//

import UIKit

class MainCourseCellView: UITableViewCell {

  @IBOutlet weak var courseImage: UIImageView!
  @IBOutlet weak var courseNameLabel: UILabel!
  
  // MARK: - Configuration
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  func setup(title: String){//, image: UIImage) {
    //courseNameLabel.text = title
    //iconImageView.image = image
    
  }
  
  // MARK: - UICollectionViewCell
  override var reuseIdentifier: String {
    return "MainCourseCellView"
  }

    
}

extension MainCourseCellView: MainCourseCellProtocol {

  func displayEmptyElements() {
  
  }
  
  func display(elements: [MainCourseElement]) {
    //courseNameLabel.text = "caca"
  }
}
