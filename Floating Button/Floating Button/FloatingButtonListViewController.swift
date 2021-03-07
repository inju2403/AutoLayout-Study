//
//  FloatingButtonListViewController.swift
//  Floating Button
//
//  Created by 이승주 on 2021/03/06.
//

import UIKit

class FloatingButtonListViewController: UIViewController {

    @IBOutlet weak var btn1CenterY: NSLayoutConstraint!
    @IBOutlet weak var btn2CenterY: NSLayoutConstraint!
    @IBOutlet weak var btn3CenterY: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btn1CenterY.constant = 0
        btn2CenterY.constant = 0
        btn3CenterY.constant = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        UIView.animate(withDuration: 1) {
//            self.btn1CenterY.constant = 80
//            self.btn2CenterY.constant = 160
//            self.btn3CenterY.constant = 240
//
//            self.view.layoutIfNeeded() // 화면 갱신
//        }
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.5, options: .curveEaseOut) { // usingSpringWithDamping: 0 - (매우많이 흔들림) , 1 이상 - (흔들림 없음)
            //화면 시작
            self.btn1CenterY.constant = 80
            self.btn2CenterY.constant = 160
            self.btn3CenterY.constant = 240
            
            self.view.layoutIfNeeded() // 화면 갱신
        } completion: { (completion) in
            //화면이 끝나는 시점
        }

    
    }
    
    @IBAction func dismissFloating(_ sender: UIButton) {
        UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.5, options: .curveEaseOut) { // usingSpringWithDamping: 0 - (매우많이 흔들림) , 1 이상 - (흔들림 없음)
            //화면 시작
            self.btn1CenterY.constant = 0
            self.btn2CenterY.constant = 0
            self.btn3CenterY.constant = 0
            
            self.view.layoutIfNeeded() // 화면 갱신
        } completion: { (completion) in
            //화면이 끝나는 시점
            
            self.dismiss(animated: false, completion: nil)
        }
    }
    

}
