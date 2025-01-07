//
//  LoginRouter.swift
//  ExampleBanner
//
//  Created by Christian Morante on 5/01/25.
//

import UIKit

class LoginRouter {
    
    private var viewHome: HomeViewController
    private var interactorHome: HomeInteractor
    private var presenterHome: HomePresenter
    private var viewRegisterHome: RegisterViewController
    
    init() {
        self.viewHome = HomeViewController()
        self.interactorHome = HomeInteractor()
        self.presenterHome = HomePresenter(homeInteractor: interactorHome)
        self.viewRegisterHome = RegisterViewController()
        presenterHome.ui = viewHome
        viewHome.presenter  = presenterHome
    }
    
    func goToHome(mainView: UIViewController) {
        mainView.navigationController?.pushViewController(viewHome, animated: true)
    }
    
    func goToRegister(mainView: UIViewController) {
        mainView.navigationController?.pushViewController(viewRegisterHome, animated: true)
    }
}
