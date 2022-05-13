//
//  GFButton.swift
//  GitHubFollowers
//
//  Created by Jon Corn on 4/6/22.
//

import UIKit

// GFButton is a subclass of UIButton
class GFButton: UIButton {
    
// MARK: - Initializers
    // you need an override init if you're doing custom stuff for the subclass
    override init(frame: CGRect) {
        super.init(frame: frame)
        // custom code
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // custom init, where we place our configure func
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }

// MARK: - Methods
    // styles the button
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        setTitleColor(.white, for: .normal)
        layer.cornerRadius     = 10
        titleLabel?.font       = UIFont.preferredFont(forTextStyle: .headline)
    }
}
