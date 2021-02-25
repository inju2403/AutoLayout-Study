//
//  ViewController.swift
//  Basic_1_Lecture
//
//  Created by 이승주 on 2021/02/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myButton = UIButton.init(type: .system)
        myButton.setTitle("My Button", for: .normal)
        
        self.view.addSubview(myButton)
        
        myButton.translatesAutoresizingMaskIntoConstraints = false
        
        myButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        myButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 100).isActive = true
        
        
        let myLabel = UILabel.init()
        myLabel.text = "My Label"
        
        self.view.addSubview(myLabel)
        
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        
        myLabel.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 50).isActive = true
        myLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        
    }


}

