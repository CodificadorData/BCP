//
//  MainRouter.swift
//  ExampleBanner
//
//  Created by Christian Morante on 1/01/25.
//
import UIKit

class MainRouter {
    
    var loginView: LoginViewController
    
    init() {
        self.loginView = LoginViewController()
    }
    
    func start(windows: UIWindow?){
        let navigationController = UINavigationController(rootViewController: loginView)
        windows?.rootViewController = navigationController
        windows?.makeKeyAndVisible()
    }
    
}
