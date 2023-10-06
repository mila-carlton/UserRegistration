

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 10
    }

    @IBAction func forgotUser() {
        showAlert(with: "Oops!", and: "Your name is Tim")
        
    }
    
    @IBAction func forgotPassword() {
        showAlert(with: "Oops!", and: "Your password is abcd")
    }
}


//MARK: - UIAlertController
extension LoginViewController {
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
    
