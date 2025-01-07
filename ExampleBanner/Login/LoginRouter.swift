//
//  LoginRouter.swift
//  ExampleBanner
//
//  Created by Christian Morante on 5/01/25.
//

import UIKit

class LoginRouter {
    
    private var viewHome: DragonBallView
    private var interactorHome: DragonBallInteractor
    private var presenterHome: DragonBallPresenter
    private var viewRegisterHome: RegisterViewController
    
    init() {
        self.viewHome = DragonBallView()
        self.interactorHome = DragonBallInteractor()
        self.presenterHome = DragonBallPresenter(dragonBallInteractor: interactorHome)
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
