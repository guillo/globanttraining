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
      
      do {
        let loginModel = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data)
        
        if loginModel == nil {
          self.mainView.showLoginScreen()
          return
        }
        
        let user = loginModel as! LoginModel
        
        self.mainView.usernameLabel.text = "Hi! \(user.username), welcome back! "
        Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { timer in
          self.mainView.showMainCoursesScreen(user: user)
        }
        
        
      } catch {
        self.mainView.showLoginScreen()
      }
      
    } else {
      self.mainView.showLoginScreen()
    }

    
    
  }
}
