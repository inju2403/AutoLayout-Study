//
//  PopupViewController.swift
//  Popup
//
//  Created by 이승주 on 2021/03/12.
//

import UIKit

class PopupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closePopup(_ sender: UIButton) {
        self.dismiss(animated: false, completion: nil)
    }
    
    
    @IBAction func doneAction(_ sender: UIButton) {
        print("press done action")
    }
}
