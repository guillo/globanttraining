//
//  UserModel.swift
//  Training
//
//  Created by Mario Guillermo Boaglio on 5/4/17.
//  Copyright © 2017 Mario Guillermo Boaglio. All rights reserved.
//

import Foundation

class LoginModel: NSObject, NSCoding  {
  public var username: String
  public var password: String

  init(username: String, password: String) {
    self.username = username
    self.password = password
  }

  public convenience required init?(coder aDecoder: NSCoder) {
    guard let username = aDecoder.decodeObject(forKey: "username") as? String,
      let password = aDecoder.decodeObject(forKey: "password") as? String
      else { return nil }

    self.init(
      username: username,
      password: password

    )
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(self.username, forKey: "username")
    aCoder.encode(self.password, forKey: "password")

  }

}
