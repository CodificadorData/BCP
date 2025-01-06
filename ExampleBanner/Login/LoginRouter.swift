//
//  LoginRouter.swift
//  ExampleBanner
//
//  Created by Christian Morante on 5/01/25.
//

import UIKit

class LoginRouter {
    
    private var view: DragonBallView
    private var interactor: DragonBallInteractor
    private var presenter: DragonBallPresenter
    
    init() {
        self.view = DragonBallView()
        self.interactor = DragonBallInteractor()
        self.presenter = DragonBallPresenter(dragonBallInteractor: interactor)
        presenter.ui = view
        view.presenter = presenter
    }
    
    func startDrgonBall(mainView: UIViewController){
        mainView.navigationController?.pushViewController(view, animated: true)
    }
    

}
