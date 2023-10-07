
import UIKit

class LogoutViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var newLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = newLabel
    }
    
    @IBAction func logoutButtonPressed() {
    }
    
  
}
