import UIKit

@IBDesignable class SketchyUISegmentedControl: UISegmentedControl {
  required init?(coder: NSCoder) {
    super.init(coder: coder)
  }

  required override init(items: [AnyObject]?) {
    super.init(items: items)
    setup()
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

private extension SketchyUISegmentedControl {
  func setup() {
    setTitleTextAttributes([NSForegroundColorAttributeName: sketchyTextColor,
      NSFontAttributeName: sketchyNavigationBarTitleFont], forState: .Normal)
    setTitleTextAttributes([NSForegroundColorAttributeName: sketchyDisabledTextColor,
      NSFontAttributeName: sketchyNavigationBarTitleFont], forState: .Disabled)
    backgroundColor = sketchyBackgroundColor
    tintColor = sketchyBorderColor
  }
}
