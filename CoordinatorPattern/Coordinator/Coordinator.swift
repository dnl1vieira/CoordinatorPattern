//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Daniel Vieira on 04/07/21.
//

import Foundation
import UIKit

enum Event{
    case buttonTapped
}

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    
    func eventOccurred(with type: Event)
    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
