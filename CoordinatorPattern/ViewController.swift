//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Daniel Vieira on 04/07/21.
//

import UIKit

class ViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "Wassup!"
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 55))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .systemGray
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.setTitle("Tap me! ", for: .normal)
    }

    @objc func didTapButton() {
        coordinator?.eventOccurred(with: .buttonTapped)
        
    }
    

}

