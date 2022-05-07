//
//  Follower.swift
//  GitHubFollowers
//
//  Created by Jon Corn on 4/10/22.
//

import Foundation

// Follower model to show in collection view
// Collection view just shows avatar and username
struct Follower: Codable {
    var login: String
    var avatarUrl: String
}
