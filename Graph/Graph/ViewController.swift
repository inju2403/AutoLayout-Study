//
//  ViewController.swift
//  Graph
//
//  Created by 이승주 on 2021/03/07.
//

import UIKit

extension NSLayoutConstraint {
    func changeMultiplier(value: CGFloat) -> NSLayoutConstraint {
        
        NSLayoutConstraint.deactivate([self])
        
        let newConstraint = NSLayoutConstraint.init(item: self.firstItem, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: self.secondAttribute, multiplier: value, constant: self.constant)
        
        newConstraint.priority = self.priority
        newConstraint.shouldBeArchived = self.shouldBeArchived
        newConstraint.identifier = self.identifier
        
        NSLayoutConstraint.activate([newConstraint])
        
        return newConstraint
        
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var graph1Height: NSLayoutConstraint!
    @IBOutlet weak var graph2Height: NSLayoutConstraint!
    @IBOutlet weak var graph3Height: NSLayoutConstraint!
    @IBOutlet weak var graph4Height: NSLayoutConstraint!
    @IBOutlet weak var graph5Height: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        graph1Height = graph1Height.changeMultiplier(value: 0.9)
        graph2Height = graph2Height.changeMultiplier(value: 0.8)
        graph3Height = graph3Height.changeMultiplier(value: 0.7)
        graph4Height = graph4Height.changeMultiplier(value: 0.6)
        graph5Height = graph5Height.changeMultiplier(value: 0.9)
        
    }
    
    @IBAction func style1(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.5) {
            self.graph1Height = self.graph1Height.changeMultiplier(value: 0.5)
            self.graph2Height = self.graph2Height.changeMultiplier(value: 0.6)
            self.graph3Height = self.graph3Height.changeMultiplier(value: 0.7)
            self.graph4Height = self.graph4Height.changeMultiplier(value: 0.8)
            self.graph5Height = self.graph5Height.changeMultiplier(value: 0.9)
            
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func style2(_ sender: UIButton) {
        graph1Height = graph1Height.changeMultiplier(value: 0.9)
        graph2Height = graph2Height.changeMultiplier(value: 0.8)
        graph3Height = graph3Height.changeMultiplier(value: 0.7)
        graph4Height = graph4Height.changeMultiplier(value: 0.6)
        graph5Height = graph5Height.changeMultiplier(value: 0.5)
        
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
    }
}

