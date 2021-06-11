//
//  LoadBarVc.swift
//  Animations
//
//  Created by surya-zstk231 on 10/06/21.
//

import UIKit

class Vc6: UIViewController {

    let layerOne = CAShapeLayer()
    let layerTwo = CAShapeLayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        addElement()
        print(CGFloat.pi*2)
        print(-CGFloat.pi / 2)
    }
    

    @objc func addElement(){
        let circlePath = UIBezierPath(arcCenter: view.center, radius: 20, startAngle: -CGFloat.pi / 2, endAngle: 5, clockwise: true)
//        let circlePath = UIBezierPath(arcCenter: view.center, radius: 50, startAngle: -CGFloat.pi / 2, endAngle: 2*CGFloat.pi, clockwise: true)
        
        let rectanglePath = UIBezierPath(rect: CGRect(x: (view.frame.width/2)-50, y: (view.frame.height/2)-50, width: 100, height: 100))
        layerOne.path = rectanglePath.cgPath
        layerOne.fillColor = UIColor.yellow.cgColor
        layerOne.strokeColor = UIColor.blue.cgColor
        layerOne.lineWidth = 2
        layerOne.strokeEnd = 0
//        view.layer.addSublayer(layerOne)
        
        layerTwo.path = circlePath.cgPath
        layerTwo.strokeColor = UIColor.white.cgColor
        layerTwo.lineWidth = 200
        layerTwo.strokeEnd = 0
        view.layer.addSublayer(layerTwo)
        
        
        Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(viewTapped), userInfo: nil, repeats: true)
    }
    

    @objc func viewTapped(){
        let customAnim = CABasicAnimation(keyPath: "strokeEnd")
        customAnim.toValue = 1
        customAnim.duration = 2
        layerOne.add(customAnim, forKey: "-")
        layerTwo.add(customAnim, forKey: "-")
    }

}
