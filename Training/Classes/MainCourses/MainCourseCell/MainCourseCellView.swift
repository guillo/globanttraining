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
  
  // MARK: - Xib Setup
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    setup()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }
  
  private func setup() {
    //courseNameLabel.text = "caca"
    
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
