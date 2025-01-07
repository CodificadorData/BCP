//
//  LoginView.swift
//  ExampleBanner
//
//  Created by Christian Morante on 5/01/25.
//
import UIKit
import Kingfisher

class LoginViewController: UIViewController {
    
    let router = LoginRouter()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .darkGray
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = button.frame.size.width / 2
        button.layer.borderWidth = 2
        button.addTarget(self, action: #selector(login), for: .touchUpInside)
        return button
    }()
    
    lazy var titleLoginLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.text = "Login"
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
    lazy var descriptionLoginLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .justified
        label.text = "Bienvenido a tu app de información de Dragon Ball Z"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return label
    }()
    
    lazy var loginImage: UIImageView = {
        let imageView = UIImageView()
        imageView.kf.setImage(with: URL(string: "https://cdn.atomix.vg/wp-content/uploads/2018/05/dbz-logo.jpg"))
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var idTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "ID"
        textField.textColor = .darkGray
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .white
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.textColor = .darkGray
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .white
        textField.isSecureTextEntry = true
        return textField
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.setTitle("Register", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = button.frame.size.width / 2
        button.layer.borderWidth = 2
        button.addTarget(self, action: #selector(register), for: .touchUpInside)
        return button
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 210/255.0, green: 105/255.0, blue: 30/255.0, alpha: 1)
        view.addSubview(loginButton)
        view.addSubview(titleLoginLabel)
        view.addSubview(descriptionLoginLabel)
        view.addSubview(loginImage)
        view.addSubview(idTextField)
        view.addSubview(passwordTextField)
        view.addSubview(registerButton)
        setupConstraints()
    }
    
    @objc func login() {
        router.goToHome(mainView: self)
    }
    
    @objc func register() {
        router.goToRegister(mainView: self)
    }
    
    func setupConstraints() {
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        titleLoginLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLoginLabel.translatesAutoresizingMaskIntoConstraints = false
        loginImage.translatesAutoresizingMaskIntoConstraints = false
        idTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        titleLoginLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            titleLoginLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLoginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLoginLabel.widthAnchor.constraint(equalToConstant: 80),
            
            loginImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginImage.topAnchor.constraint(equalTo: titleLoginLabel.bottomAnchor, constant: 50),
            loginImage.heightAnchor.constraint(equalToConstant: 160),
            
            descriptionLoginLabel.topAnchor.constraint(equalTo: loginImage.bottomAnchor, constant: 50),
            descriptionLoginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descriptionLoginLabel.widthAnchor.constraint(equalToConstant: 300),
            
            idTextField.topAnchor.constraint(equalTo: descriptionLoginLabel.bottomAnchor, constant: 20),
            idTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            idTextField.widthAnchor.constraint(equalToConstant: 300),
            
            passwordTextField.topAnchor.constraint(equalTo: idTextField.bottomAnchor, constant: 20),
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.widthAnchor.constraint(equalToConstant: 300),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 100),
            
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 30),
            registerButton.widthAnchor.constraint(equalToConstant: 100),
            registerButton.centerXAnchor.constraint(equalTo: loginButton.centerXAnchor)
            

        ])
    }
}
