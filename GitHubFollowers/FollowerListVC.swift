//
//  FollowerListVC.swift
//  GitHubFollowers
//
//  Created by Jon Corn on 4/8/22.
//

import UIKit

class FollowerListVC: UIViewController {
    
    // MARK: - Properties
    var username: String!
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
    }
}
