//
//  CustomView.swift
//  Test
//
//  Created by Justin Edmund on 2/18/16.
//  Copyright © 2016 Justin Edmund. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    // MARK: - Properties
    let button: UIButton = {
        let button = UIButton()
        
        button.backgroundColor = .blueColor()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10.0
        
        button.setTitle("Button", forState: .Normal)
        button.setTitleColor(.whiteColor(), forState: .Normal)
        
        return button
    }()
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("\(self.dynamicType): init")
        
        // Set up view
        self.backgroundColor = .yellowColor()
        self.addSubview(button)
        
        // Set up constraints
        let margins = self.layoutMarginsGuide
        let constraints: [NSLayoutConstraint] = [
            button.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor),
            button.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor)
        ]
        NSLayoutConstraint.activateConstraints(constraints)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}