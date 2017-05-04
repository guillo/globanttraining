//
//  LoginProtocol.swift
//  Training
//
//  Created by Mario Guillermo Boaglio on 5/3/17.
//  Copyright © 2017 Mario Guillermo Boaglio. All rights reserved.
//

import Foundation

protocol LoginProtocol: class {

  func onLoginError(error: String)

  func onLoginSuccess()

  func showEmptyUsername()

  func showEmptyPassword()
}
