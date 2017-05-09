//
//  SettingsPresenter.swift
//  Training
//
//  Created by Mario Guillermo Boaglio on 5/5/17.
//  Copyright © 2017 Mario Guillermo Boaglio. All rights reserved.
//

import Foundation

class SettingsPresenter {

  // MARK: - Properties
  private weak var settingsView: SettingsProtocol!

  init(settingsView: SettingsProtocol) {
    self.settingsView = settingsView
  }

}
