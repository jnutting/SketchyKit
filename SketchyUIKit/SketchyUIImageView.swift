import UIKit

@IBDesignable class SketchyUIImageView: UIImageView {
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

private extension SketchyUIImageView {
  func setup() {
    contentMode = .ScaleToFill
    image = sketchyImage(self.frame.size, scale: self.window?.screen.scale ?? 1.0)
  }
}
