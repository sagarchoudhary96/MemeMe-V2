//
//  MemeTextFieldDelegate.swift
//  MemeMe-V2
//
//  Created by Sagar Choudhary on 06/11/18.
//  Copyright © 2018 Sagar Choudhary. All rights reserved.
//

import Foundation
import UIKit

class MemeTextFieldDelegate: NSObject, UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
