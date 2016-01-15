import UIKit

@IBDesignable class SketchyUISwitch: UISwitch {
  required init?(coder: NSCoder) {
    super.init(coder: coder)
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

private extension SketchyUISwitch {
  func setup() {
    onTintColor = sketchyBorderColor
    thumbTintColor = sketchyAlternateBackgroundColor
  }
}
