//
//  RegisterView.swift
//  AppPapple
//
//  Created by Christian Morante on 6/01/25.
//

import UIKit

class RegisterViewController: UIViewController {
    
    //let router = RegisterRouter()
    
    lazy var successButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.setTitle("Registrar", for: .highlighted)
        button.layer.borderWidth = .infinity
        button.tintColor = .white
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
        view.addSubview(successButton)
        setupConstraints()
    }
    
    func setupConstraints() {
        successButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            successButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            successButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func register() {
        //router.goToLogin(mainView: self)
    }
}
