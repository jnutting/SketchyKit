import UIKit

@IBDesignable class SketchyUITextField: UITextField {
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

private extension SketchyUITextField {
  func setup() {
    font = sketchyLabelFont
    textColor = sketchyTextColor
    backgroundColor = sketchyBackgroundColor
    borderStyle = .Line
  }
}
