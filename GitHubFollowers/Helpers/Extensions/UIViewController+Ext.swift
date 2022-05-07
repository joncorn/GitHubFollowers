//
//  UIViewController+Ext.swift
//  GitHubFollowers
//
//  Created by Jon Corn on 4/9/22.
//

import UIKit

extension UIViewController {
    // creates alert controller on main thread
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(alertTitle: title, alertMessage: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle  = .overFullScreen
            alertVC.modalTransitionStyle    = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
