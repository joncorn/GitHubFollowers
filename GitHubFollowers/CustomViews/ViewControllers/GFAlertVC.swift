//
//  GFAlertVC.swift
//  GitHubFollowers
//
//  Created by Jon Corn on 4/9/22.
//

import UIKit

class GFAlertVC: UIViewController {

// MARK: - Properties
    let containerView = UIView()
    let titleLabel    = GFTitleLabel(textAlignment: .center, fontSize: 20)
    let messageLabel  = GFBodyLabel(textAlignment: .center)
    let actionButton  = GFButton(backgroundColor: .systemPink, title: "Okay")
    
    var alertTitle   : String?
    var alertMessage : String?
    var buttonTitle  : String?
    
    let padding: CGFloat = 20
    
// MARK: - Initializers
    init(alertTitle: String, alertMessage: String, buttonTitle: String) {
        super.init(nibName: nil, bundle: nil)
        self.alertTitle   = alertTitle
        self.alertMessage = alertMessage
        self.buttonTitle  = buttonTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
// MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // set view background color
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.75)
        // subview setup methods
        configureContainerView()
        configureTitleLabel()
        configureActionButton()
        configureMessageLabel()
    }

// MARK: - View setup methods
    func configureContainerView() {
        view.addSubview(containerView)
        containerView.backgroundColor     = .systemBackground
        containerView.layer.cornerRadius  = 16
        containerView.layer.borderWidth   = 2
        containerView.layer.borderColor   = UIColor.white.cgColor
        containerView.translatesAutoresizingMaskIntoConstraints = false
        // constraints
        NSLayoutConstraint.activate([
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.widthAnchor.constraint(equalToConstant: 280),
            containerView.heightAnchor.constraint(equalToConstant: 220),
            
        ])
    }
    
    
    func configureTitleLabel() {
        containerView.addSubview(titleLabel)
        titleLabel.text = alertTitle ?? "Something went wrong"
        // constraints
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: padding),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            titleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            titleLabel.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
    
    
    func configureActionButton() {
        containerView.addSubview(actionButton)
        actionButton.setTitle(buttonTitle ?? "Okay", for: .normal)
        actionButton.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        // constraints
        NSLayoutConstraint.activate([
            actionButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -padding),
            actionButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            actionButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            actionButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    
    func configureMessageLabel() {
        containerView.addSubview(messageLabel)
        messageLabel.text          = alertMessage ?? "Unable to complete request"
        messageLabel.numberOfLines = 4
        // constraints
        NSLayoutConstraint.activate([
            messageLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            messageLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            messageLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            messageLabel.bottomAnchor.constraint(equalTo: actionButton.topAnchor, constant: -12)
        ])
    }
    
    // dismiss view
    @objc func dismissVC() {
        dismiss(animated: true)
    }
}
