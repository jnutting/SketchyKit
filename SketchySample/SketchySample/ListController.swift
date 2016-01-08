import UIKit

class ListController: UITableViewController {
  private let list = ["Alice", "Betty", "Carol", "Delilah", "Edith", "Francine"]

  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return list.count
  }

  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("Plain", forIndexPath: indexPath)
    cell.textLabel?.text = list[indexPath.row]
    return cell
  }

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    guard let destination = segue.destinationViewController as? ItemController else { return}
    guard let indexPath = self.tableView.indexPathForSelectedRow else { return }
    destination.item = list[indexPath.row]
  }
}
