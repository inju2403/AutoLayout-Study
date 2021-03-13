//
//  ViewController.swift
//  Popup
//
//  Created by 이승주 on 2021/03/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showPopup(_ sender: UIButton) {
        // PopupViewController
        
        let storyboard = UIStoryboard.init(name: "PopupViewController", bundle: nil)
        
        let popupVC = storyboard.instantiateViewController(withIdentifier: "popupVC")
        
        // 해당 뷰컨트롤러에 투명도가 있으면 투명도를 적용
        popupVC.modalPresentationStyle = .overCurrentContext
        
        self.present(popupVC, animated: false, completion: nil)
    }
    
}

