//
//  ViewController.swift
//  HW-11-Aubakirov-Serikzhan-firstVersion
//
//  Created by Serikzhan on 22.02.2023.
//

import UIKit

// MARK: Extensions
extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}

class ViewController: UIViewController {
   
    // MARK: Outlets
    private lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .systemGray2
        textField.textAlignment = .center
        textField.placeholder = "keeanurives01"
        textField.backgroundColor = .systemGray6
        textField.layer.cornerRadius = 10
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.setLeftIcon(UIImage.init(named: "userIcon") ?? UIImage.remove)
        return textField
    }()
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .systemGray2
        textField.textAlignment = .center
        textField.placeholder = "Password"
        textField.backgroundColor = .systemGray6
        textField.layer.cornerRadius = 10
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.setLeftIcon(UIImage.init(named: "passwordIcon") ?? UIImage.remove)
        return textField
    }()
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupConstaints()
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: Setup
    func setupHierarchy() {
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
    }
    
    func setupConstaints() {
        NSLayoutConstraint.activate([
            loginTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150.0),
            loginTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 70),
            loginTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -70),
            
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100.0),
            passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 70),
            passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -70)
        ])
    }
    
    // MARK: Actions
    
}

