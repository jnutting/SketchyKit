import UIKit

/*
UINavigationBar doesn't work with Xcode yet (as of Xcode 7.2)
so this code isn't marked as such. However, by setting the class
in InterfaceBuilder, you will get the sketchy look when running,
just not in IB.
*/

class SketchyUINavigationBar: UINavigationBar {
  override class func initialize() {
    let barButtonItem = UIBarButtonItem.appearanceWhenContainedInInstancesOfClasses([SketchyUINavigationBar.self])
    barButtonItem.setTitleTextAttributes([NSForegroundColorAttributeName: sketchyTextColor,
      NSFontAttributeName: sketchyNavigationBarTitleFont], forState: .Normal)
    barButtonItem.setTitleTextAttributes([NSForegroundColorAttributeName: sketchyDisabledTextColor,
      NSFontAttributeName: sketchyNavigationBarTitleFont], forState: .Disabled)
  }

  required init?(coder: NSCoder) {
    super.init(coder: coder)
    setup()
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }
}

private extension SketchyUINavigationBar {
  func setup() {
    titleTextAttributes = [NSForegroundColorAttributeName: sketchyTextColor,
      NSFontAttributeName: sketchyNavigationBarTitleFont]
    tintColor = sketchyTextColor
    barTintColor = sketchyBackgroundColor
  }
}
