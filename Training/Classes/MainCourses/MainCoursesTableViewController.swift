//
//  TableViewViewController.swift
//  Training
//
//  Created by Mario Guillermo Boaglio on 5/3/17.
//  Copyright © 2017 Mario Guillermo Boaglio. All rights reserved.
//

import UIKit

class MainCoursesTableViewController: UITableViewController {

  //Mark: - Properties
  private var presenter: MainCoursesPresenter!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    presenter = MainCoursesPresenter(mainCoursesView: self)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override func tableView(_ tableView: UITableView,
                 numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 60
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "MainCourseCellView", for: indexPath)
    
    if let reservationCell = cell as? MainCourseCellProtocol {
      presenter.setupContent(for: reservationCell, at: indexPath)
    }
    return cell
  }

}

extension MainCoursesTableViewController: MainCoursesProtocol
{
  
}
