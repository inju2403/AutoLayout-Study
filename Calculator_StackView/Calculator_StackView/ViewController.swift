//
//  ViewController.swift
//  Calculator_StackView
//
//  Created by 이승주 on 2021/02/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var btn1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        resultLabel.layer.cornerRadius = 20
        resultLabel.layer.masksToBounds = true // cornerRaidus  변경을 가능하게 함
        resultLabel.clipsToBounds = true //위의 코드와 동일한 기능
        
        btn1.layer.cornerRadius = 20
        btn1.clipsToBounds = true
    }


}

