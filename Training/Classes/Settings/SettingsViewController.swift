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

  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var lastnameLabel: UILabel!
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
    presenter = SettingsPresenter(settingsView: self)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  @IBAction func clearCacheTap(_ sender: Any) {

  }
    
  @IBAction func logoutTap(_ sender: Any) {
    UserDefaults.standard.set(nil, forKey: "loginModel")
  }

}

extension SettingsViewController: SettingsProtocol {

}
