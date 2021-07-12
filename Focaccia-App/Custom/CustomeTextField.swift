//
//  CustomeTextField.swift
//  Focaccia-App
//
//  Created by ברוסלי סואעד  on 11/07/2021.
//

import UIKit

class CustomeTextField: UITextField {

    // First lodin func
    override init(frame : CGRect) {
    super.init(frame : frame)
    defaultSetUp()
}
    // First required
required init ? (coder aDecoder: NSCoder){
    super.init(coder: aDecoder)
    defaultSetUp()
    
}
// Sets Up the textfield to custom
    func  defaultSetUp() {
////   emailTextField.layer.borderWidth = 1
////   emailTextField.attributedPlaceholder = UIColor(hexString: " E0E0E0").cgColor
////   emailTextField.attributedPlaceholder = NSAttributedString(string: emailTextField.placeholder!,   attributes: [NSForgroundColorAtrributedName: UIColor(hexString: "9E9E9E")])
//  layer.sublayerTransfrom = CATransform3DMakeTranslation(12, 0, 0)
    }
}
