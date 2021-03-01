//
//  ViewController.swift
//  Expand Cell
//
//  Created by 이승주 on 2021/03/02.
//

import UIKit

class ExpandCell: UITableViewCell {
    @IBOutlet weak var descriptionLabel: UILabel!
    
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // row 개수
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // cell을 구성하는 부분에 대한 내용
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expandCell_ID", for: indexPath) as! ExpandCell
        
        cell.descriptionLabel.text = "test"
        
        return cell
    }
    
}

