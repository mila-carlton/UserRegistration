

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 10
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        if let touch = touches.first,
           touch.phase == .began {
               view.endEditing(true)
           }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userName.text == "Tim", userPassword.text == "abcd"
        else { showAlert(with: "Wrong name or Password!", and: "Try again 😉")
            userName.text = ""
            userPassword.text = ""
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let labelText = segue.destination as? LogoutViewController else
        { return }
        labelText.newLabel = userName.text
    }

    @IBAction func forgotUser() {
        showAlert(with: "Oops!", and: "Your name is Tim 😉")
    }
    @IBAction func forgotPassword() {
        showAlert(with: "Oops!", and: "Your password is abcd 😉")
    }
    
    @IBAction func unwind(for segue:UIStoryboardSegue) {
        userName.text = ""
        userPassword.text = ""
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
    
