//
//  RegisterRouter.swift
//  ExampleBanner
//
//  Created by Christian Morante on 6/01/25.
//
import UIKit

class RegisterRouter {
    
    private var loginView: LoginViewController
    
    init() {
        self.loginView = LoginViewController()
    }
    
    func goToLogin(mainView: UIViewController) {
        mainView.navigationController?.pushViewController(loginView, animated: true)
    }
}
