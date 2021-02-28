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
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn10: UIButton!
    @IBOutlet weak var btn11: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        resultLabel.layer.cornerRadius = 20
////        resultLabel.layer.masksToBounds = true // cornerRaidus  변경을 가능하게 함
        resultLabel.clipsToBounds = true //위의 코드와 동일한 기능
        
        btn1.layer.cornerRadius = btn1.bounds.width/2
        btn2.layer.cornerRadius = btn1.bounds.width/2
        btn3.layer.cornerRadius = btn1.bounds.width/2
        btn4.layer.cornerRadius = btn1.bounds.width/2
        btn5.layer.cornerRadius = btn1.bounds.width/2
        btn6.layer.cornerRadius = btn1.bounds.width/2
        btn7.layer.cornerRadius = btn1.bounds.width/2
        btn8.layer.cornerRadius = btn1.bounds.width/2
        btn9.layer.cornerRadius = btn1.bounds.width/2
        btn10.layer.cornerRadius = btn1.bounds.height/2
        btn11.layer.cornerRadius = btn1.bounds.width/2
    }


}

