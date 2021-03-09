//
//  ViewController.swift
//  Custom Switch
//
//  Created by 이승주 on 2021/03/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swithBtn: UIButton!
    @IBOutlet weak var switchBG: UIView!
    @IBOutlet weak var buttonCenterX: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        swithBtn.layer.cornerRadius = 50 / 2
        switchBG.layer.cornerRadius = 50 / 2
    }

    @IBAction func selectedButton(_ sender: Any) {
        if buttonCenterX.constant == 75 {
            buttonCenterX.constant = -75
        } else {
            buttonCenterX.constant = 75
        }
    }
    
}

