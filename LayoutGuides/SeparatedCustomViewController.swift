//
//  SeparatedCustomViewController.swift
//  Test
//
//  Created by Justin Edmund on 2/18/16.
//  Copyright © 2016 Justin Edmund. All rights reserved.
//

import UIKit

class SeparatedCustomViewController: UIViewController {
    
    // SeparatedCustomViewController separates the view from the view controller
    // for more modularity.
    //
    // Using a custom view without adding it as a subview can be less-than-intuitive in Swift,
    // so I'm employing a solution by Colin Eberhardt to lazily load the custom view.
    //
    // The main problem with this solution is that the bottom constraint is set in 
    // the View Controller and not in the View, so that we can use UIViewController's built-in 
    // topLayoutGuide/bottomLayoutGuide. We'll fix this next.
    
    // MARK: - Properties
    lazy private var customView: CustomView = {
        return CustomView()
    }()
    
    // MARK: - Initializers
    convenience init() {
        self.init(nibName: nil, bundle: nil)
        print("\(self.dynamicType): init")
        
        self.view = customView
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
        
        // Set up bottom constraint, using UIViewController's built-in bottomLayoutGuide
        let constraints: [NSLayoutConstraint] = [
            self.customView.button.bottomAnchor.constraintEqualToAnchor(self.bottomLayoutGuide.topAnchor, constant: -16)
        ]
        NSLayoutConstraint.activateConstraints(constraints)
        
        // Here, we use the UIView extension by Jack Cox to show the UILayoutGuides visually
        self.view.showLayoutGuides()
    }
    
}
