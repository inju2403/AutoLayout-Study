//
//  ViewController.swift
//  Floating Button
//
//  Created by 이승주 on 2021/03/03.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPopup" {
            let floatingVC = segue.destination as! FloatingButtonListViewController
            floatingVC.modalPresentationStyle = .overCurrentContext // 해당 뷰컨트롤러의 색상을 투명하게 사용가능
        }
    }
}

