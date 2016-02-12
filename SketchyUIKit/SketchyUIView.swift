import UIKit

@IBDesignable class SketchyUIView: UIView {
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
    setNeedsDisplay()
  }
}

private extension SketchyUIView {
  func sketchyViewBackgroundColor() -> UIColor {
    if let superview = self.superview {
      if let sketchySuperview = superview as? SketchyUIView {
        if sketchySuperview.sketchyViewBackgroundColor() == sketchyBackgroundColor {
          return sketchyLightBackgroundColor
        } else {
          return sketchyBackgroundColor
        }
      }
    }
    return sketchyBackgroundColor
  }

  func setup() {
    backgroundColor = sketchyViewBackgroundColor()
  }
}