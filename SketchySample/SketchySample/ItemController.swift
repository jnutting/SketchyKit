import UIKit

class ItemController: UIViewController {
  @IBOutlet var label: UILabel!
  var item: String = "Nobody" {
    didSet {
      updateDisplay()
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    updateDisplay()
  }
}

private extension ItemController {
  func updateDisplay() {
    label?.text = item
  }
}
