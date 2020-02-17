//
//  BuyViewController.swift
//  CordinatorTest
//
//  Created by Dung Khuat on 2/17/20.
//  Copyright © 2020 Dung Khuat. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    weak var delegate: MainCoordinatorProtocol?
    fileprivate var name = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view
    }
    

    @IBAction func handleBack(_ sender: UIButton) {
        print("Test: ", name)
        delegate?.passDataBack(text: name)
    }
    
    func initData(_ text: String) {
        self.name = text
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
