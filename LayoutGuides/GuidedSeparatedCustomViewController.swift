//
//  GuidedSeparatedCustomViewController.swift
//  Test
//
//  Created by Justin Edmund on 2/18/16.
//  Copyright © 2016 Justin Edmund. All rights reserved.
//

import UIKit

class GuidedSeparatedCustomViewController: UIViewController {
    
    // GuidedSeparatedCustomViewController separates the view from the view controller
    // for more modularity, while allowing its view to create its own UILayoutGuides
    //
    // This works pretty well, but isn't nearly as modular as I imagine UIViewController's 
    // built-in UILayoutGuides are. For one, the UILayoutGuide must be turned on or off
    // manually by the developer, as UIView does not know who its parent is.
    //
    // Also, you end up creating an extra (in this case) UITabBarController just to get the
    // height of the tab bar for the UILayoutGuide's constraint. This could be hard-coded,
    // but I didn't want to hard code a solution.
    //
    // All in all, this is better than SeparatedCustomViewController, but its still not perfect.
    // It might be good enough for now for me though.
    
    // MARK: - Properties
    lazy private var customView: GuidedCustomView = {
        return GuidedCustomView()
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
        
        // Here, we use the UIView extension by Jack Cox to show the UILayoutGuides visually
        self.view.showLayoutGuides()
    }
    
}
