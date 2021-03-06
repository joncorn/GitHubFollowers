//
//  GFSecondaryTitleLabel.swift
//  GitHubFollowers
//
//  Created by Jon Corn on 5/16/22.
//

import UIKit

class GFSecondaryTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // custom init
    init(fontSize: CGFloat) {
        super.init(frame: .zero)
        font = UIFont.systemFont(ofSize: fontSize, weight: .medium)
        configure()
    }

// MARK: - Methods
    private func configure() {
        textColor                  = .secondaryLabel
        adjustsFontSizeToFitWidth  = true
        minimumScaleFactor         = 0.90
        lineBreakMode              = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
