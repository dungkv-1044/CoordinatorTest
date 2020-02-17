//
//  MainCoordinator.swift
//  CordinatorTest
//
//  Created by Dung Khuat on 2/17/20.
//  Copyright © 2020 Dung Khuat. All rights reserved.
//

import UIKit

protocol MainCoordinatorProtocol: class {
    func passDataBack(text: String)
}

class MainCoordinator: Coordinator {
    var childCoordinator: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func buySubscription(text: String, parent: UIViewController) {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        vc.initData(text)
        vc.delegate = parent.self as? MainCoordinatorProtocol
        navigationController.pushViewController(vc, animated: true)
    }
    
    func createAccount() {
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
