//
//  LoginViewController.swift
//  Focaccia-App
//
//  Created by ברוסלי סואעד  on 11/07/2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    // First Load Func
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProperties()
    }
    
    // Sets Up the UI eliments
    func setUpProperties(){
//         Textfield
//        emailTextField.layer.borderWidth = 1
//        emailTextField.attributedPlaceholder = UIColor(named: " E0E0E0")?.cgColor
////        emailTextField.attributedPlaceholder = NSAttributedString(string: emailTextField.placeholder!, attributes:[NSForgroundColorAtrributedName: UIColor(hexString: "9E9E9E")])
//         layer.sublayerTransfrom = CATransform3DMakeTranslation(12, 0, 0)
        
// LOGIN BUTTON
loginButton.layer.cornerRadius = loginButton.layer.frame.height/2

// spacing
let spacing = 1.5
let buttononAtrributedString = NSMutableAttributedString(string: (loginButton.titleLabel?.text)!)
buttononAtrributedString.addAttribute(NSAttributedString.Key.kern, value: spacing, range: NSMakeRange(0,buttononAtrributedString.length))
loginButton.setAttributedTitle(buttononAtrributedString, for: .normal)
        
    }
}
