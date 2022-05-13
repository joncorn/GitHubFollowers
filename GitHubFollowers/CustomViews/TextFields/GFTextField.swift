//
//  GFTextField.swift
//  GitHubFollowers
//
//  Created by Jon Corn on 4/7/22.
//

import UIKit

class GFTextField: UITextField {
    
// MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        // custom code
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
// MARK: - Methods
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        // outer style
        layer.cornerRadius         = 10
        layer.borderWidth          = 2
        layer.borderColor          = UIColor.systemGray4.cgColor
        // inner style
        textColor                  = .label
        tintColor                  = .label
        textAlignment              = .center
        font                       = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth  = true
        minimumFontSize            = 12
        // operation
        backgroundColor            = .tertiarySystemBackground
        autocorrectionType         = .no
        returnKeyType              = .go
        placeholder                = "Enter a username"
    }
}
