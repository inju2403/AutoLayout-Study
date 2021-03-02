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

    struct ExpandDataModel {
        var description: String
        var isExpand: Bool
    }
    
    var dataModels = [ExpandDataModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let textArray = ["short Text",
                         "long long long long long long long long long long long long long long long long long long long long Text",
                         "short Text",
                         "long long long long long long long long long long long long long long long long long long long long Text"]
        
        for(_, value) in textArray.enumerated() {
            dataModels.append(ExpandDataModel.init(description: value, isExpand: false))
        }
    }

    // row 개수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModels.count
    }
    
    // cell을 구성하는 부분에 대한 내용
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expandCell_ID", for: indexPath) as! ExpandCell
        
        cell.descriptionLabel.text = "test"
        
        return cell
    }
    
}

