//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Daniel Vieira on 04/07/21.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator{
    var navigationController: UINavigationController?
    
    func eventOccurred(with type: Event) {
        switch type {
        
            case .buttonTapped:
                var vc: UIViewController & Coordinating = SecondViewController()
                vc.coordinator = self
                navigationController?.pushViewController(vc, animated: true)
            }
        
    }
    
    func start() {
        var vc: UIViewController & Coordinating = ViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false )
    }
    
    
}
