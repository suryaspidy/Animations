//
//  Vc4.swift
//  Animations
//
//  Created by surya-zstk231 on 08/06/21.
//

import UIKit

class Vc4: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var sliderArea: UISlider!
    var animate = UIViewPropertyAnimator(duration: 1.0, curve: .linear)

    override func viewDidLoad() {
        super.viewDidLoad()
        addAnimations()
        
    }
    

    func addAnimations(){
        animate.addAnimations { [self] in
            mainView.backgroundColor = .red
            mainView.transform = CGAffineTransform(scaleX: 2, y: 2)
            mainView.layer.cornerRadius = mainView.frame.height/4
        }
        
        animate.addAnimations ({ [self] in
            mainView.frame.origin.y -= 200
        }, delayFactor: 0.5)
        
        animate.addAnimations ({ [self] in
            mainView.frame.origin.y += 100
        }, delayFactor: 0.0)
        
        
        
//        animate.isReversed = true
    }
    @IBAction func SliderValueChanged(_ sender: UISlider) {
        animate.fractionComplete = CGFloat(sender.value)
            }
    
}
