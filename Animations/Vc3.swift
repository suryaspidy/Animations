//
//  Vc3.swift
//  Animations
//
//  Created by surya-zstk231 on 08/06/21.
//

import UIKit

class Vc3: UIViewController {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var imageViewArea: UIImageView!
    @IBOutlet weak var spark1: UIView!
    @IBOutlet weak var spark2: UIView!
    @IBOutlet weak var spark3: UIView!
    @IBOutlet weak var spark4: UIView!
    @IBOutlet weak var spark5: UIView!
    @IBOutlet weak var spark6: UIView!
    @IBOutlet weak var spark7: UIView!
    @IBOutlet weak var spark8: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        decreaseSize()
        goToSparc()

    }
    
    func decreaseSize(){
        UIView.animate(withDuration: 5.0, delay: 0.0, options: [.repeat,.autoreverse]) { [self] in
            mainView.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
        }
    }
    
    func goToSparc(){
        UIView.animate(withDuration: 2.0, delay: 0.0, options: [.repeat]) { [self] in
            spark1.transform = CGAffineTransform(translationX: -300, y: -700)
            spark2.transform = CGAffineTransform(translationX: -250, y: -700)
            spark3.transform = CGAffineTransform(translationX: -200, y: -700)
            spark4.transform = CGAffineTransform(translationX: -150, y: -700)
            spark5.transform = CGAffineTransform(translationX: -100, y: -700)
            spark6.transform = CGAffineTransform(translationX: -50, y: -700)
            spark7.transform = CGAffineTransform(translationX: 0, y: -700)
            spark8.transform = CGAffineTransform(translationX: 50, y: -700)
            spark1.alpha = 0
            spark2.alpha = 0
            spark3.alpha = 0
            spark4.alpha = 0
            spark5.alpha = 0
            spark6.alpha = 0
            spark7.alpha = 0
            spark8.alpha = 0
        }
    }

    let backgroundColour:[UIColor] = [#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1),#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1),#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1),#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1),#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1),#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1),#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1),#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1),#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1),#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1),#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1),#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1),#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1),#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1),#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)]
    
    func rotate(){
        var n = 0
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.repeat]) { [self] in
            mainView.backgroundColor = backgroundColour[n]
            mainView.transform = CGAffineTransform(rotationAngle: 300)
            n = Int.random(in: 0..<backgroundColour.count)
            
        }
    }

}
