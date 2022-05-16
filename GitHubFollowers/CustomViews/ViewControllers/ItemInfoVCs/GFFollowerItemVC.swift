//
//  GFFollowerItemVC.swift
//  GitHubFollowers
//
//  Created by Jon Corn on 5/16/22.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {
    
    // View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    
    // Setup using inheritence
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
}
