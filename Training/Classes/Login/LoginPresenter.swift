//
//  LoginPresenter.swift
//  Training
//
//  Created by Mario Guillermo Boaglio on 5/3/17.
//  Copyright © 2017 Mario Guillermo Boaglio. All rights reserved.
//

import Foundation

class LoginPresenter {

  // MARK: - Properties
  private weak var loginView: LoginProtocol!
  private var loginModel: LoginModel!

  //MARK - Constants
  private let username = "mario"
  private let password = "boaglio"

  init(loginView: LoginProtocol) {
    self.loginView = loginView
  }

  func onLogin(username: String, password: String) {
    guard !username.isEmpty else {
      loginView.showEmptyUsername()
      return
    }

    guard !password.isEmpty else {
      loginView.showEmptyPassword()
      return
    }

    if username == self.username && password == self.password {

      if self.loginModel == nil {
        self.loginModel = LoginModel(username: username, password: password)
      }

      let data = NSKeyedArchiver.archivedData(withRootObject: self.loginModel)
      UserDefaults.standard.set(data, forKey: "loginModel")

      loginView.onLoginSuccess(user: loginModel)
    } else {
      loginView.onLoginError(error: "You shall not pass")
    }
  }
}
