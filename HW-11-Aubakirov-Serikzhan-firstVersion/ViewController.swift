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
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 21, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}

class ViewController: UIViewController {
    
    // MARK: Outlets
    private lazy var mainLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .black
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var connectWithSocialNetLabel: UILabel = {
        let label = UILabel()
        label.text = "or connect with"
        label.textColor = .black
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var dontHaveAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Dont have account?"
        label.textColor = .black
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .systemGray2
        textField.textAlignment = .center
        textField.placeholder = "keanurives01"
        textField.backgroundColor = .systemGray6
        textField.layer.cornerRadius = 20
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.setLeftIcon(UIImage(named: "userIcon") ?? UIImage.remove)
        return textField
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .systemGray2
        textField.textAlignment = .center
        textField.placeholder = "Password"
        textField.backgroundColor = .systemGray6
        textField.layer.cornerRadius = 20
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.setLeftIcon(UIImage(named: "passwordIcon") ?? UIImage.remove)
        return textField
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        button.backgroundColor = .systemBlue
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    @objc private func loginButtonPressed() {
        print("Login button pressed")
    }
    
    private lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        button.backgroundColor = .systemGray2
        button.setTitle("Forgot your password?", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(forgotPasswordButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    @objc private func forgotPasswordButtonPressed() {
        print("forgot Password button pressed")
    }
    
    private lazy var facebookButton: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        button.backgroundColor = .systemBlue
        button.setTitle("Facebook", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(facebookButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    @objc private func facebookButtonPressed() {
        print("facebook button pressed")
    }
    
    private lazy var twitterButton: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        button.backgroundColor = .systemBlue
        button.setTitle("Twitter", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(twitterButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    @objc private func twitterButtonPressed() {
        print("twitter button pressed")
    }
    
    private lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.backgroundColor = .white
        button.setTitle("Sign up", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(signUpButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    @objc private func signUpButtonPressed() {
        print("Sign up button pressed")
    }
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupConstaints()
    }
    
    // MARK: Setup
    func setupHierarchy() {
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(mainLabel)
        view.addSubview(connectWithSocialNetLabel)
        view.addSubview(dontHaveAccountLabel)
        view.addSubview(loginButton)
        view.addSubview(forgotPasswordButton)
        view.addSubview(facebookButton)
        view.addSubview(twitterButton)
        view.addSubview(signUpButton)
    }
    
    func setupConstaints() {
        NSLayoutConstraint.activate([
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -250),
            mainLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            mainLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            
            connectWithSocialNetLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            connectWithSocialNetLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 150),
            connectWithSocialNetLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            connectWithSocialNetLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            
            dontHaveAccountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -40),
            dontHaveAccountLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 270),
            dontHaveAccountLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 60),
            dontHaveAccountLabel.widthAnchor.constraint(equalToConstant: 150),
            dontHaveAccountLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 50),
            
            loginTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150),
            loginTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            loginTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            loginTextField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
            passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -10),
            loginButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            loginButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            loginButton.heightAnchor.constraint(equalToConstant: 40),
            
            forgotPasswordButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            forgotPasswordButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50),
            forgotPasswordButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            forgotPasswordButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            forgotPasswordButton.heightAnchor.constraint(equalToConstant: 40),
            
            facebookButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -90),
            facebookButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200),
            facebookButton.heightAnchor.constraint(equalToConstant: 40),
            facebookButton.widthAnchor.constraint(equalToConstant: 150),
            
            twitterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 90),
            twitterButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200),
            twitterButton.heightAnchor.constraint(equalToConstant: 40),
            twitterButton.widthAnchor.constraint(equalToConstant: 150),
            
            signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 80),
            signUpButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 270),
            signUpButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -70),
            signUpButton.widthAnchor.constraint(equalToConstant: 120),
        ])
    }
    
    // MARK: Actions
    
}

