//
//  ViewController.swift
//  HW2.1.2
//
//  Created by Игорь Зигура on 19.08.2020.
//  Copyright © 2020 Zigura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stackOfViews: UIStackView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var actionButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        actionButton.setTitle("START", for: .normal)
//        redView.layer.cornerRadius = redView.layer.frame.height / 2
//        greenView.layer.cornerRadius = greenView.layer.frame.height / 2
//        yellowView.layer.cornerRadius = yellowView.layer.frame.height / 2
//        print(redView.layer.cornerRadius, redView.layer.frame.height)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        redView.layer.cornerRadius = redView.layer.frame.height / 2
        greenView.layer.cornerRadius = greenView.layer.frame.height / 2
        yellowView.layer.cornerRadius = yellowView.layer.frame.height / 2
        print(redView.layer.cornerRadius, redView.layer.frame.height)
    }

    @IBAction func actionButtonPushed() {
        actionButton.setTitle("NEXT", for: .normal)
        if redView.alpha == 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else if yellowView.alpha == 1 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else {
            greenView.alpha = 0.3
            redView.alpha = 1
        }
    }
}

