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
        animate.addAnimations {
            self.mainView.backgroundColor = .red
//            self.mainView.alpha = 0
        }
    }
    @IBAction func SliderValueChanged(_ sender: UISlider) {
        animate.fractionComplete = CGFloat(sender.value)
    }
    
}
