//
//  MainViewController.swift
//  Testland
//
//  Created by Martin Keller on 07.10.2017.
//  Copyright © 2017 Martin Keller. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(dragViewDown(_:)))
        navigationController!.view.addGestureRecognizer(panGesture)
    }
    
    @IBAction func dragViewDown(_ gesture: UIPanGestureRecognizer) {
        if let dragView = gesture.view {
            let translation = gesture.translation(in: dragView)
            
            dragView.center.y = (dragView.center.y + translation.y)
            
            gesture.setTranslation(CGPoint.zero, in: dragView)
        }
    }
}

