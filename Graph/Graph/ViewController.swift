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
        graph1Height = graph1Height.changeMultiplier(value: 0.8)
        graph1Height = graph1Height.changeMultiplier(value: 0.7)
        graph1Height = graph1Height.changeMultiplier(value: 0.6)
        graph1Height = graph1Height.changeMultiplier(value: 0.9)
        
    }
    
}

