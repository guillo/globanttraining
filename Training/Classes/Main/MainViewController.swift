//
//  MainViewController.swift
//  Training
//
//  Created by Mario Guillermo Boaglio on 5/9/17.
//  Copyright © 2017 Mario Guillermo Boaglio. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

  // MARK: - Properties
  private var presenter: MainPresenter!

  override func viewDidLoad() {
    super.viewDidLoad()

    presenter = MainPresenter(mainView: self)
  }

  override func viewDidAppear(_ animated: Bool) {
    presenter.isUserLoged()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.


  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.

  }


}

extension MainViewController: MainProtocol {
  func showMainCoursesScreen(user: LoginModel) {
    self.performSegue(withIdentifier: "loginSuccessfulSegue", sender: user)
  }

  func showLoginScreen() {
    self.performSegue(withIdentifier: "loginInSegue", sender: nil)
  }
  
}
