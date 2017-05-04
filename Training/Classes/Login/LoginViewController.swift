//
//  LoginViewController.swift
//  Training
//
//  Created by Mario Guillermo Boaglio on 5/3/17.
//  Copyright © 2017 Mario Guillermo Boaglio. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

  // MARK: - Constants
  let emptyUsernameError = "Empty username login error"
  let emptyPasswordError = "Empty password login error"

  // MARK: - Properties
  private var presenter: LoginPresenter!

  // MARK: - IBOutlets
  @IBOutlet weak var errorLabel: UILabel!
  @IBOutlet weak var userNameTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var userLabel: UILabel!

  // MARK: - IBActions
  @IBAction func btnLoginTap(_ sender: Any) {
    errorLabel.isHidden = true
    presenter.onLogin(username: userNameTextField.text!, password: passwordTextField.text!)
    
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    presenter = LoginPresenter(loginView: self)

  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
  }

}

extension LoginViewController: LoginProtocol {

  func onLoginError(error: String){
    errorLabel.isHidden = false
    errorLabel.text = error
  }

  func onLoginSuccess(){
    //let mainVC = TableViewViewController(nibName:"TableViewViewController", bundle:nil)
    //self.navigationController?.pushViewController(mainVC, animated: true)

    self.performSegue(withIdentifier: "loginSuccessfulSegue", sender: nil)

    //self.present(mainVC, animated: true, completion: nil)

  }

  func showEmptyUsername(){
    errorLabel.isHidden = false
    errorLabel.text = emptyUsernameError
  }

  func showEmptyPassword(){
    errorLabel.isHidden = false
    errorLabel.text = emptyPasswordError
  }

}
