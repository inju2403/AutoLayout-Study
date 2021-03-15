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
        
        let height = keyboardFrame.size.height - self.view.safeAreaInsets.bottom // 아이폰 X 이상에서 텍스트뷰의 크기를 맞추기 위해 safeArea 영역만큼 빼야한다
        
        // 키보드가 올라갈 때 걸리는 시간을 가져온다. (그 시간만큼 텍스트뷰에 애니메이션을 주기 위해서)
        let animationDuration = notiInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as! TimeInterval
        
        
        UIView.animate(withDuration: animationDuration) {
            // 키보드가 올라갈 때 높이 값을 키보드의 높이 만큼 줌
            self.inputViewBottomMargin.constant = height
            self.view.layoutIfNeeded()
        }
        
        
    }
    
    @objc func keyboardWillHide(noti: Notification) {
        
        let notiInfo = noti.userInfo!
        
        // 키보드가 내려갈 때 걸리는 시간을 가져온다. (그 시간만큼 텍스트뷰에 애니메이션을 주기 위해서)
        let animationDuration = notiInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as! TimeInterval
        
        
        UIView.animate(withDuration: animationDuration) {
            // 키보드가 내려갈 때 높이 값을 0으로 설정
            self.inputViewBottomMargin.constant = 0
            self.view.layoutIfNeeded()
        }
    }

    @IBAction func sendString(_ sender: UIButton) {
    }
    
}

