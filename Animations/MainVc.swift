//
//  MainVc.swift
//  Animations
//
//  Created by surya-zstk231 on 10/06/21.
//

import UIKit

class MainVc: UIViewController {
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    var vc: [UIViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addVc()
        addVcInScrollVc()
        
        scrollView.delegate = self
        
    }
    
    @IBAction func pageChanged(_ sender: UIPageControl) {
        let current = sender.currentPage
        scrollView.setContentOffset(CGPoint(x: CGFloat(current) * view.frame.width, y: 0), animated: true)
    }
    
    func addVc(){
        let view1 = (storyboard?.instantiateViewController(identifier: "Vc1"))!
        let view2 = (storyboard?.instantiateViewController(identifier: "Vc2"))!
        let view3 = (storyboard?.instantiateViewController(identifier: "Vc3"))!
        let view4 = (storyboard?.instantiateViewController(identifier: "Vc4"))!
        let view5 = (storyboard?.instantiateViewController(identifier: "Vc5"))!
        let view6 = (storyboard?.instantiateViewController(identifier: "Vc6"))!
        
        vc.append(view1)
        vc.append(view2)
        vc.append(view3)
        vc.append(view4)
        vc.append(view5)
        vc.append(view6)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        pageControl.frame = CGRect(x:  10, y: view.frame.height-100, width: view.frame.width-20, height: 70)
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height-100)
    }
    
    func addVcInScrollVc(){
        scrollView.contentSize = CGSize(width: view.frame.width*CGFloat(vc.count), height: view.frame.height)
        for ele in 0..<vc.count{
            
            let frame = CGRect(x: CGFloat(ele) * view.frame.width, y: 0, width: view.frame.width, height: scrollView.frame.height)
            if let page = vc[ele].view{
                page.frame = frame
                scrollView.addSubview(page)
            }
            
        }
    }


}


extension MainVc: UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage =  Int(Float(scrollView.contentOffset.x) / Float(scrollView.frame.width))
    }
}
