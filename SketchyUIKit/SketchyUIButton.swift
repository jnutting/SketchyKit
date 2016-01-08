import UIKit

@IBDesignable class SketchyUIButton: UIButton {
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

private extension SketchyUIButton {
  func setup() {
    titleLabel?.font = sketchyButtonFont
    tintColor = sketchyTextColor
    backgroundColor = sketchyBackgroundColor
    layer.borderColor = sketchyBorderColor.CGColor
    layer.borderWidth = sketchyBorderWidth
    layer.cornerRadius = sketchyRoundedCornerRadius
  }
}
