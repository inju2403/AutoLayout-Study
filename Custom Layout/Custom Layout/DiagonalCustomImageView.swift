//
//  DiagonalCustomImageView.swift
//  Custom Layout
//
//  Created by 이승주 on 2021/03/09.
//

import UIKit

class DiagonalCustomImageView: UIImageView {

    // 대각선으로 잘린 사각형을 그린다
    // bezierPath
    
    // path -> layer
    
    // layer -> mask
    
    func makePath() -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint.init(x: self.bounds.width, y: 0))
        path.addLine(to: CGPoint.init(x: self.bounds.width, y: self.bounds.height))
        path.addLine(to: CGPoint.init(x: self.bounds.width, y: self.bounds.width - 100))
        path.close() // (0,0)으로 그리는 코드와 같은 역할을 함
        
        return path
    }
    
    func pathLayer() -> CAShapeLayer {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = makePath().cgPath
        return shapeLayer
    }
    
    func makeMask() {
        self.layer.mask = pathLayer().mask
    }

}
