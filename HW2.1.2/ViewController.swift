//
//  ViewController.swift
//  HW2.1.2
//
//  Created by Игорь Зигура on 19.08.2020.
//  Copyright © 2020 Zigura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var actionButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = 1
        yellowView.alpha = 0.5
        greenView.alpha = 0.5
        actionButton.setTitle("NEXT1", for: .normal)
        
    }

    @IBAction func actionButtonPushed() {
        if redView.alpha == 1 {
            redView.alpha = 0.5
            yellowView.alpha = 1
        } else if yellowView.alpha == 1 {
            yellowView.alpha = 0.5
            greenView.alpha = 1
        } else {
            greenView.alpha = 0.5
            redView.alpha = 1
        }
    }
}

