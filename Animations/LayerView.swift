//
//  LayerView.swift
//  Animations
//
//  Created by surya-zstk231 on 08/06/21.
//

import UIKit

class LayerView: UIView {
    
    let setUpColour:[CGColor] = [#colorLiteral(red: 0.5803921569, green: 0, blue: 0.8274509804, alpha: 0.3),#colorLiteral(red: 0.2941176471, green: 0, blue: 0.5098039216, alpha: 0.4),#colorLiteral(red: 0, green: 0, blue: 1, alpha: 0.5),#colorLiteral(red: 0, green: 1, blue: 0, alpha: 0.6),#colorLiteral(red: 1, green: 1, blue: 0, alpha: 0.7),#colorLiteral(red: 1, green: 0.4980392157, blue: 0, alpha: 0.8),#colorLiteral(red: 1, green: 0, blue: 0, alpha: 0.9),#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)]
    let gradientModelColour:[CGColor] = [#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),#colorLiteral(red: 1, green: 0, blue: 0, alpha: 0.9),#colorLiteral(red: 1, green: 0.4980392157, blue: 0, alpha: 0.8),#colorLiteral(red: 1, green: 1, blue: 0, alpha: 0.7),#colorLiteral(red: 0, green: 1, blue: 0, alpha: 0.6),#colorLiteral(red: 0, green: 0, blue: 1, alpha: 0.5),#colorLiteral(red: 0.2941176471, green: 0, blue: 0.5098039216, alpha: 0.4),#colorLiteral(red: 0.5803921569, green: 0, blue: 0.8274509804, alpha: 0.3)]
    let uicolour:[UIColor] = [#colorLiteral(red: 0.5803921569, green: 0, blue: 0.8274509804, alpha: 0.3),#colorLiteral(red: 0.2941176471, green: 0, blue: 0.5098039216, alpha: 0.4),#colorLiteral(red: 0, green: 0, blue: 1, alpha: 0.5),#colorLiteral(red: 0, green: 1, blue: 0, alpha: 0.6),#colorLiteral(red: 1, green: 1, blue: 0, alpha: 0.7),#colorLiteral(red: 1, green: 0.4980392157, blue: 0, alpha: 0.8),#colorLiteral(red: 1, green: 0, blue: 0, alpha: 0.9),#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)]
    override init(frame: CGRect) {
        super.init(frame: frame)
        
       for i in 0...7{
            let inset = CGFloat(i * 20)
            let size = bounds.insetBy(dx: inset, dy: inset)
        
        
        
            let layer = CALayer()
            layer.cornerRadius = size.height/2
            layer.frame = size
            layer.backgroundColor = setUpColour[i]
            self.layer.addSublayer(layer)
        
            
//        let gradientLayerForDummy = CAGradientLayer()
//        gradientLayerForDummy.frame = size
//        gradientLayerForDummy.colors = [setUpColour[i],gradientModelColour[i]]
//        gradientLayerForDummy.cornerRadius = size.height/2
//        self.layer.addSublayer(gradientLayerForDummy)
//
        
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = size
//        gradientLayer.colors = [setUpColour[0],setUpColour[1],setUpColour[2],setUpColour[3],setUpColour[4],setUpColour[5],setUpColour[6]]
//        gradientLayer.cornerRadius = size.height/2
//        self.layer.addSublayer(gradientLayer)
            
        
//            let view = UIView()
//            view.frame = size
//            view.layer.cornerRadius = size.height/2
//            view.backgroundColor = uicolour[i]
//            self.addSubview(view)
        
        
        
//        let txt = CATextLayer()
//        txt.frame = size
//        let attributes = [
//            NSAttributedString.Key.font: UIFont(name: "Chalkduster", size: 30.0)! ,
//            NSAttributedString.Key.backgroundColor: UIColor.cyan,
//            NSAttributedString.Key.foregroundColor: UIColor.red
//        ]
//        let str = NSAttributedString(string: "My text", attributes: attributes )
//        txt.string = str
//        self.layer.addSublayer(txt)
        
        }
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
