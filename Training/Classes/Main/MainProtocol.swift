//
//  MainProtocol.swift
//  Training
//
//  Created by Mario Guillermo Boaglio on 5/9/17.
//  Copyright © 2017 Mario Guillermo Boaglio. All rights reserved.
//

import Foundation

protocol MainProtocol: class {

  func showLoginScreen()

  func showMainCoursesScreen(user: LoginModel)
}
