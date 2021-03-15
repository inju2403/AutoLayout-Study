//
//  ViewController.swift
//  Chat App
//
//  Created by 이승주 on 2021/03/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var chatTableView: UITableView!
    @IBOutlet weak var inputTextView: UITextView!
    @IBOutlet weak var inputViewBottomMargin: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 사용하려는 셀을 등록해야만 사용할 수 있다.
        chatTableView.register(UINib(nibName: "MyCell", bundle: nil), forCellReuseIdentifier: "myCell")
        chatTableView.register(UINib(nibName: "YourCell", bundle: nil), forCellReuseIdentifier: "yourCell")
        
        // 키보드 관련 옵저버 설정해야 함
        // 키보드 올라올 때
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        // 키보드 내려갈 때
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        
    }
    
    @objc func keyboardWillShow(noti: Notification) {
        
        let notiInfo = noti.userInfo!
        
        // keyboardFrameEndUserInfoKey: 키보드가 다 올라온 상태일 때 키보드의 크기를 가져올 수 있음
        // CGRect: Frame 형태의 Type
        let keyboardFrame = notiInfo[UIResponder.keyboardFrameEndUserInfoKey] as! CGRect
        
        // 키보드가 올라갈 때 높이 값을 키보드의 높이 만큼 줌
        let height = keyboardFrame.size.height
        inputViewBottomMargin.constant = height
        
    }
    
    @objc func keyboardWillHide(noti: Notification) {
        // 키보드가 내려갈 때 높이 값을 0으로 설정
        inputViewBottomMargin.constant = 0
    }

    @IBAction func sendString(_ sender: UIButton) {
    }
    
}

