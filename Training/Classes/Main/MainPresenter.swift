//
//  MainPresenter.swift
//  Training
//
//  Created by Mario Guillermo Boaglio on 5/9/17.
//  Copyright © 2017 Mario Guillermo Boaglio. All rights reserved.
//

import Foundation

class MainPresenter {

  private weak var mainView: MainViewController!

  init(mainView: MainViewController) {
    self.mainView = mainView
  }

  func isUserLoged() {

    if let data = UserDefaults.standard.object(forKey: "loginModel") as? NSData {
      let loginModel = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data)
      guard loginModel == nil else {
        mainView.showLoginScreen()
        return
      }
      mainView.showMainCoursesScreen(user: loginModel as! LoginModel) // use guard
    } else {
      mainView.showLoginScreen()
    }
    
    
  }

}
