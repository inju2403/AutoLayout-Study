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
                         "long long long long long long long long long long long long long long long long long long long long Text",
                         "short Text",
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
        
        cell.descriptionLabel.text = dataModels[indexPath.row].description
        
        cell.descriptionLabel.numberOfLines = dataModels[indexPath.row].isExpand ? 0 : 1
        
        cell.selectionStyle = .none
        
        return cell
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dataModels[indexPath.row].isExpand = !dataModels[indexPath.row].isExpand
        tableView.reloadRows(at: [indexPath], with: .none)
        
        // 오토레이아웃으로 설정 했을 경우 row height가 오토메틱으로 설정되는 부분들이 조금은 꼬일 수 있음 -> 이런저런 시도를 해봐야 한다
        
        // 1. heightForRowAt에서 정확한 높이를 지정 -> 확실히 해결
        
        // 2. tableView.reloadData() -> 어느정도 해결
        
        // 3. 어느정도 해결
//        tableView.estimatedSectionHeaderHeight = 0
//        tableView.estimatedSectionFooterHeight = 0
        
        // 4. 애니메이션 효과 없애기 -> 확실히 해결
        
//        UIView.setAnimationsEnabled(false)
//        tableView.reloadRows(at: [indexPath], with: .none)
//        UIView.setAnimationsEnabled(true) // false에서 reload하고 다시 true로 바꿔준다(모든 애니메이션이 계속 중지되면 안되기 때문)
    }
    
}

