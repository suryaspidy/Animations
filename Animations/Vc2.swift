//
//  Vc2.swift
//  Animations
//
//  Created by surya-zstk231 on 08/06/21.
//

import UIKit

class Vc2: UIViewController {

    @IBOutlet weak var viewOne:UIView!
    @IBOutlet weak var imageArea: UIImageView!
    
    
    @IBOutlet weak var heightAnchorConstant: NSLayoutConstraint!
    @IBOutlet weak var widthAnchorConstant: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        popUpAnimation()
    }
    

    
    
    func colour(){
        UIView.animate(withDuration: 3.0, delay: 1.0, options: [.autoreverse,.repeat]) { [self] in
            viewOne.backgroundColor = .cyan
            viewOne.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        }

    }
    
    let backgroundColour:[UIColor] = [#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1),#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1),#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1),#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1),#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1),#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1),#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1),#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1),#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1),#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1),#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1),#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1),#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1),#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1),#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)]
    
    func rotate(){
        var n = 0
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.repeat]) { [self] in
            viewOne.backgroundColor = backgroundColour[n]
            viewOne.transform = CGAffineTransform(rotationAngle: 300)
            n = Int.random(in: 0..<backgroundColour.count)
            
        }
    }
    func setMiddle(){
        let rotate = CGAffineTransform(rotationAngle: 360)
                    let translate = CGAffineTransform(translationX: -120, y: -120)
                    let scale = CGAffineTransform(scaleX: 2, y: 2)
                    self.viewOne.transform = rotate.concatenating(translate).concatenating(scale)
                    UIView.animate(withDuration: 3, delay: 0,usingSpringWithDamping: 0.8,initialSpringVelocity: 0.5, options: [.autoreverse,.curveEaseInOut], animations: {
                        self.viewOne.transform = .identity
                    }, completion: nil)
    }
    
    func finishedFunc(){
        UIView .transition(with: self.viewOne, duration: 2, options: [.repeat,.autoreverse],animations: {
                    self.viewOne.backgroundColor = UIColor.green
                    }){finished in
                        self.viewOne.backgroundColor = UIColor.blue
                    }
     }
    
    func popUpAnimation(){
        UIView.animate(withDuration: 1.0,delay: 0.0,options: [.repeat,.autoreverse],animations: { [self] () -> Void in
                    viewOne.layer.cornerRadius = heightAnchorConstant.constant
                    heightAnchorConstant.constant *= 2
                    widthAnchorConstant.constant *= 2
                       self.viewOne?.layoutIfNeeded()
        })
    }

}
