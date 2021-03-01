//
//  CustomKeyboard.swift
//  Custom Keyboard
//
//  Created by 이승주 on 2021/03/01.
//

import UIKit

protocol CustomKeyboardDelegate {
    func keyboardTapped(str: String)
}

class CustomKeyboard: UIView {

    var delegate: CustomKeyboardDelegate?
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        delegate?.keyboardTapped(str: sender.titleLabel!.text!)
    }
}
