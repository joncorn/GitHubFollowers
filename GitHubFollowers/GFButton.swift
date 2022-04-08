//
//  GFButton.swift
//  GitHubFollowers
//
//  Created by Jon Corn on 4/6/22.
//

import UIKit

// GFButton is a subclass of UIButton
class GFButton: UIButton {
   
   // you need an override init if you're doing custom stuff for the subclass
   override init(frame: CGRect) {
      super.init(frame: frame)
      // custom code
      configure()
   }
   
   required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   
   init(backgroundColor: UIColor, title: String) {
      super.init(frame: .zero)
      self.backgroundColor = backgroundColor
      self.setTitle(title, for: .normal)
      configure()
   }
   
   private func configure() {
      translatesAutoresizingMaskIntoConstraints = false
      
      layer.cornerRadius     = 10
      titleLabel?.textColor  = .white
      titleLabel?.font       = UIFont.preferredFont(forTextStyle: .headline)
   }
}
