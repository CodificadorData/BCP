//
//  LoginView.swift
//  ExampleBanner
//
//  Created by Christian Morante on 5/01/25.
//
import UIKit

class LoginViewController: UIViewController {
    
    let loginRouter = LoginRouter ()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.addTarget(self, action: #selector(login), for: .touchUpInside)
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
        view.backgroundColor = .green
        view.addSubview(loginButton)
        setupConstraints()
    }
    
    @objc func login() {
        loginRouter.startDrgonBall(mainView: self)
    }
    
    func setupConstraints() {
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
