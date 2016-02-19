# LayoutGuides

How to programmatically use UILayoutGuide with separated views and view controllers

#### How to use

Open `AppDelegate.swift` and enable the View Controller whose behavior you want to observe. There are three:

* `CustomViewController` is a run-of-the-mill custom UIViewController with embedded view code.
* `SeparatedCustomViewController` is a custom UIViewController that has had its view separated into a separate file, `CustomView.swift`.
* `GuidedSeparatedViewController` is a custom UIViewController with a separate view, `GuidedCustomView.swift`, that also handles its own UILayoutGuides.

🌟I'll add more documentation later 🌟

#### Sources

* [_Swift Initialization and the Pain of Optionals_](http://blog.scottlogic.com/2014/11/20/swift-initialisation.html) by Colin Eberhardt
* [_UILayoutGuide - Auto Layout's Invisible Helpers_](https://www.captechconsulting.com/blogs/uilayoutguide--auto-layouts-invisible-helpers) by Jack Cox
