import Foundation


@IBDesignable class SketchyUITableViewCell: UITableViewCell {
  required init?(coder: NSCoder) {
    super.init(coder: coder)
  }

  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
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

private extension SketchyUITableViewCell {
  func setup() {
    textLabel?.font = sketchyLabelFont
    textLabel?.textColor = sketchyTextColor
    backgroundColor = sketchyBackgroundColor
  }
}
