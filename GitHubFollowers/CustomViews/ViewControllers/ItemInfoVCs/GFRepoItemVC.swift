//
//  GFRepoItemVC.swift
//  GitHubFollowers
//
//  Created by Jon Corn on 5/16/22.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC {
    
    // View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    
    // Setup using inheritence
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
}
