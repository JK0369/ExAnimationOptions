//
//  ViewController.swift
//  ExAnimationOption
//
//  Created by 김종권 on 2023/08/02.
//

import UIKit

class ViewController: UIViewController {
    
    let myView = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
    var lastPoint = CGPoint()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myView.backgroundColor = .red
        myView.center = CGPoint(x: 0, y: 0)
        view.addSubview(myView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(
            withDuration: 5.0,
            delay: 0,
            options: [.repeat, .autoreverse],
            animations: {
                self.myView.center = CGPoint(x: 200, y: 300)
            }
        )
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            UIView.animate(
                withDuration: 10.0,
                delay: 0,
                options: [.beginFromCurrentState],
                animations: {
                    self.myView.center = CGPoint(x: 1000, y: 1000)
                }
            )
        })
    }
}
