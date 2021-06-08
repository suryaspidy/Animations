//
//  Vc1.swift
//  Animations
//
//  Created by surya-zstk231 on 08/06/21.
//

import UIKit

class Vc1: UIViewController {

    @IBOutlet weak var layerParentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let childView = LayerView(frame: layerParentView.bounds)
        layerParentView.addSubview(childView)
        
    }
    
    

}
