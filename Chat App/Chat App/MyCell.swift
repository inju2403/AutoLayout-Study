//
//  MyCell.swift
//  Chat App
//
//  Created by 이승주 on 2021/03/15.
//

import UIKit

class MyCell: UITableViewCell {

    @IBOutlet weak var myTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
