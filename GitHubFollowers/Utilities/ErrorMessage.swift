//
//  ErrorMessage.swift
//  GitHubFollowers
//
//  Created by Jon Corn on 4/10/22.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername   = "This username created an invalid request"
    case unableToComplete  = "Unable to complete your request. Please check your internet connection."
    case invalidResponse   = "Invalid response from the server. Please try again."
    case invalidData       = "The data received from the server was invalid. Please try again."
}
