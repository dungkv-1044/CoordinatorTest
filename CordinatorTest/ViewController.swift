//
//  ViewController.swift
//  CordinatorTest
//
//  Created by Dung Khuat on 2/17/20.
//  Copyright © 2020 Dung Khuat. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buyTapped(_ sender: UIButton) {
        coordinator?.buySubscription(text: "Demooooo", parent: self)
    }
    
    @IBAction func createAccount(_ sender: UIButton) {
        coordinator?.createAccount()
    }
}

extension ViewController: MainCoordinatorProtocol {
    func passDataBack(text: String) {
        print("=====Delegate:::", text)
    }
}



