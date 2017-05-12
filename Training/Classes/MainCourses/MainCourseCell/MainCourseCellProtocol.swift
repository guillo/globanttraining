//
//  MainCourseCellProtocol.swift
//  Training
//
//  Created by Mario Guillermo Boaglio on 5/8/17.
//  Copyright © 2017 Mario Guillermo Boaglio. All rights reserved.
//

import Foundation

typealias MainCourseElement = (iconId: String, title: String)

protocol MainCourseCellProtocol: class {
  
  func displayEmptyElements()

  func display(elements: [MainCourseElement])

}
