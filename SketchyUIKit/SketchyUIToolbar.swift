import UIKit

@IBDesignable class SketchyUIToolbar: UIToolbar {
  required init?(coder: NSCoder) {
    super.init(coder: coder)
  }

  override class func initialize() {
    let barButtonItem = UIBarButtonItem.appearanceWhenContainedInInstancesOfClasses([SketchyUIToolbar.self])
    barButtonItem.setTitleTextAttributes([NSForegroundColorAttributeName: sketchyTextColor,
      NSFontAttributeName: sketchyNavigationBarTitleFont], forState: .Normal)
    barButtonItem.setTitleTextAttributes([NSForegroundColorAttributeName: sketchyDisabledTextColor,
      NSFontAttributeName: sketchyNavigationBarTitleFont], forState: .Disabled)
  }

  required override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }

  override func awakeFromNib() {
    super.awakeFromNib()
    setup()
  }

  override func prepareForInterfaceBuilder() {
    super.prepareForInterfaceBuilder()
    setup()
  }
}

private extension SketchyUIToolbar {
  func setup() {
    barTintColor = sketchyBackgroundColor
  }
}
