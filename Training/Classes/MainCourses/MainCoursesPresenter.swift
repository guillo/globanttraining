//
//  MainCoursesPresenter.swift
//  Training
//
//  Created by Mario Guillermo Boaglio on 5/5/17.
//  Copyright © 2017 Mario Guillermo Boaglio. All rights reserved.
//

import Foundation

class MainCoursesPresenter {

  // MARK: - Properties
  private weak var mainCoursesView: MainCoursesProtocol!

  init(mainCoursesView: MainCoursesProtocol) {
    self.mainCoursesView = mainCoursesView
  }
  
  func setupContent(for cell: MainCourseCellProtocol, at indexPath: IndexPath) {
    prepareCell(cell, at: indexPath)
  }
  private func prepareCell(_ cell: MainCourseCellProtocol, at indexPath: IndexPath) {
    cell.displayEmptyElements()
    
    cell.display(elements: [MainCourseElement(iconId: "2", title: "Hola")])
  }

}
