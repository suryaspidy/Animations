//
//  Vc5.swift
//  Animations
//
//  Created by surya-zstk231 on 09/06/21.
//

import UIKit

class Vc5: UIViewController {

    
    let layer = CAShapeLayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        addElement()
    }
    
    
    func addElement(){
        let circlePath = UIBezierPath(arcCenter: view.center, radius: 100, startAngle: -CGFloat.pi / 2, endAngle: 2*CGFloat.pi, clockwise: true)
        layer.path = circlePath.cgPath
        layer.fillColor = UIColor.yellow.cgColor
        layer.strokeColor = UIColor.red.cgColor
        layer.lineWidth = 10
        layer.strokeEnd = 0
        view.layer.addSublayer(layer)
        Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(viewTapped), userInfo: nil, repeats: true)
    }
    

    @objc func viewTapped(){
        let customAnim = CABasicAnimation(keyPath: "strokeEnd")
        customAnim.toValue = 1
        customAnim.duration = 2
        layer.add(customAnim, forKey: "-")
    }

}
