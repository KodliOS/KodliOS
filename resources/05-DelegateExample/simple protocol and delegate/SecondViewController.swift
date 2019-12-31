//
//  SecondViewController.swift
//  simple protocol and delegate
//
//  Created by Oguz on 31.12.2019.
//  Copyright © 2019 Oguz. All rights reserved.
//

import UIKit

protocol SecondVCDelegate {
    func changeBackgorundColor(color: UIColor)
}

class SecondViewController: UIViewController {
    
    var delegate: FirstViewController?
    
    let changeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Change", for: .normal)
        button.backgroundColor = .green
        button.layer.cornerRadius = 20
        button.titleLabel?.font = .systemFont(ofSize: 35, weight: .regular)
        button.addTarget(self, action: #selector(didTapChangeButton(_:)), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        setupLayouts()
    }
    
    @objc func didTapChangeButton(_ sender: UIButton) {
        delegate?.changeBackgorundColor(color: .random)
        dismiss(animated: true, completion: nil)
    }

    func setupLayouts() {
        view.addSubview(changeButton)
        NSLayoutConstraint.activate([
            changeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            changeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            changeButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1),
            changeButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
        ])
    }
}
