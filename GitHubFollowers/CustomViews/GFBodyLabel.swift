//
//  GFBodyLabel.swift
//  GitHubFollowers
//
//  Created by Jon Corn on 4/9/22.
//

import UIKit

class GFBodyLabel: UILabel {

// MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // custom init
    init(textAlignment: NSTextAlignment) {
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        configure()
    }

// MARK: - Methods
    private func configure() {
        textColor                  = .secondaryLabel
        font                       = UIFont.preferredFont(forTextStyle: .body)
        adjustsFontSizeToFitWidth  = true
        minimumScaleFactor         = 0.75
        lineBreakMode              = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
    }
}
