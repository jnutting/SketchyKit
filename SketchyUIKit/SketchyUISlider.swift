import UIKit

@IBDesignable class SketchyUISlider: UISlider {
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

private extension SketchyUISlider {
  func setup() {
    tintColor = sketchyBorderColor
    thumbTintColor = sketchyAlternateBackgroundColor
  }
}
