//
//  HomeCoordinator.swift
//  ExampleBanner
//
//  Created by Christian Morante on 1/01/25.
//
import UIKit

class HomeCoordinator: CoordinatorProtocol {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let view = DragonBallView()
        let interactor = DragonBallInteractor()
        let presenter = DragonBallPresenter(dragonBallInteractor: interactor)
        view.presenter = presenter
        presenter.ui = view

        navigationController.pushViewController(view, animated: true)
        print(view)
    }
}
