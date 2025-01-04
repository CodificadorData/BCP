//
//  MainRouter.swift
//  ExampleBanner
//
//  Created by Christian Morante on 1/01/25.
//
import UIKit

class MainRouter {
    
    var view: DragonBallView
    var interactor: DragonBallInteractor
    var presenter: DragonBallPresenter
    
    init() {
        self.view = DragonBallView()
        self.interactor = DragonBallInteractor()
        self.presenter = DragonBallPresenter(dragonBallInteractor: interactor)
        presenter.ui = view
        view.presenter = presenter
    }
    
    func startDrgonBall(windows: UIWindow?){
        let navigationController = UINavigationController(rootViewController: view)
        windows?.rootViewController = navigationController
        windows?.makeKeyAndVisible()
    }
    
    func goToCharactersDetail(characterView: UIViewController) {
        view.navigationController?.pushViewController(characterView, animated: true)
    }
}
