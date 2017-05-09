//
//  SettingsViewController.swift
//  Training
//
//  Created by Mario Guillermo Boaglio on 5/5/17.
//  Copyright © 2017 Mario Guillermo Boaglio. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

  // MARK: - Properties
  private var presenter: SettingsPresenter!

  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
    presenter = SettingsPresenter(settingsView: self)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
    
}

extension SettingsViewController: SettingsProtocol {

}
