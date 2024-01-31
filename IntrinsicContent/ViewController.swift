//
//  ViewController.swift
//  IntrinsicContent
//
//  Created by Terry Jason on 2024/1/31.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }

}

// MARK: - LayOut

extension ViewController {
    
    private func setUpViews() {
        let nameLabel = makeLabel(withText: "Name")
        let nameTextField = makeTextField(withPlaceHolderText: "Write your name")
        
        view.addSubview(nameLabel)
        view.addSubview(nameTextField)
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            nameTextField.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 8),
            nameTextField.firstBaselineAnchor.constraint(equalTo: nameLabel.firstBaselineAnchor),
            nameTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8),
        ])
        
        nameLabel.setContentHuggingPriority(UILayoutPriority(rawValue: 251), for: .horizontal)
    }
    
}

// MARK: - Reuse Methods

extension ViewController {
    
    private func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = text
        label.backgroundColor = .systemOrange
        
        return label
    }
    
    private func makeTextField(withPlaceHolderText text: String) -> UITextField {
        let textField = UITextField()
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        textField.placeholder = text
        textField.backgroundColor = .lightGray
        
        return textField
    }
    
}

