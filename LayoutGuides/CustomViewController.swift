//
//  CustomViewController.swift
//  Test
//
//  Created by Justin Edmund on 2/18/16.
//  Copyright © 2016 Justin Edmund. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {
    
    // CustomViewController is a vanilla programmatic UIViewController.
    // As in most examples you can find online, the view is embedded in the view controller.
    
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
    convenience init() {
        self.init(nibName: nil, bundle: nil)
        print("\(self.dynamicType): init")
        
        // Set up view
        self.view.backgroundColor = .yellowColor()
        self.view.addSubview(button)
        
        // Set up constraints
        let margins = self.view.layoutMarginsGuide
        let constraints: [NSLayoutConstraint] = [
            button.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor),
            button.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor),
            button.bottomAnchor.constraintEqualToAnchor(self.bottomLayoutGuide.topAnchor, constant: -16)
        ]
        NSLayoutConstraint.activateConstraints(constraints)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - View cycle methods
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("\(self.dynamicType): viewDidLayoutSubviews")
        
        // Here, we use the UIView extension by Jack Cox to show the UILayoutGuides visually
        self.view.showLayoutGuides()
    }
    
}
