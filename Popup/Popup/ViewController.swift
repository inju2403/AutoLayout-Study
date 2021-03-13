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
        
        self.present(popupVC, animated: true, completion: nil)
    }
    
}

