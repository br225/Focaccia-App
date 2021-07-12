//
//  LogInSignUpViewController.swift
//  Focaccia-App
//
//  Created by ברוסלי סואעד  on 10/07/2021.
//

import UIKit

class LogInSignUpViewController: UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var dontHaveAcoountLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProperties()
    }
    func setUpProperties(){
        
        // LOGIN BUTTON
        loginButton.layer.cornerRadius = loginButton.layer.frame.height/2
        
        // spacing
        let spacing = 1.5
        let buttononAtrributedString = NSMutableAttributedString(string: (loginButton.titleLabel?.text)!)
        buttononAtrributedString.addAttribute(NSAttributedString.Key.kern, value: spacing, range: NSMakeRange(0,buttononAtrributedString.length))
        loginButton.setAttributedTitle(buttononAtrributedString, for: .normal)
        
        //Label Spaceeing
        let labelSpace = 1
        let labelAttributedString = NSMutableAttributedString(string: dontHaveAcoountLabel.text!)
        labelAttributedString.addAttribute(NSAttributedString.Key.kern, value: labelSpace, range: NSMakeRange(0,labelAttributedString.length))
        dontHaveAcoountLabel.attributedText = labelAttributedString
        
        // SING UP BUTTON
        signupButton.layer.borderWidth = 2
        signupButton.layer.cornerRadius = signupButton.layer.frame.height/2
        
            // Spacing For Sign Up BUTTON
        let signUpSpacing = 1.5
        let signUpSpacingbuttonAttributedString = NSMutableAttributedString(string: (signupButton.titleLabel?.text)!)
        signUpSpacingbuttonAttributedString.addAttribute(NSAttributedString.Key.kern, value: signUpSpacing, range: NSMakeRange(0, buttononAtrributedString.length))
        signupButton.setAttributedTitle(signUpSpacingbuttonAttributedString, for: .normal)
        
}
}
