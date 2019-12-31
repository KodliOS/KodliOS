//
//  ViewController.swift
//  simple protocol and delegate
//
//  Created by Oguz on 31.12.2019.
//  Copyright © 2019 Oguz. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, SecondVCDelegate {

    let goButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Go", for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 20
        button.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        button.addTarget(self, action: #selector(didTapGoButton(_:)), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupLayouts()
    }
    
    @objc func didTapGoButton(_ sender: UIButton) {
        let secondVC = SecondViewController()
        secondVC.view.backgroundColor = .random
        secondVC.delegate = self
        show(secondVC, sender: nil)
    }
    
    func setupLayouts() {
        view.addSubview(goButton)
        NSLayoutConstraint.activate([
            goButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            goButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1),
            goButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
        ])
    }
    
    //MARK: - SecondVCDelegate Methods
    func changeBackgorundColor(color: UIColor) {
        view.backgroundColor = color
    }
}

