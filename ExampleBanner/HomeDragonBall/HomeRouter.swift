//
//  HomeRouter.swift
//  ExampleBanner
//
//  Created by Christian Morante on 18/02/24.
//

import Foundation
import UIKit

class DragonBallRouter {
    
    let view: DragonBallView
    let interactor: DragonBallInteractor
    let presenter: DragonBallPresenter

    init() {
        self.view = DragonBallView()
        self.interactor = DragonBallInteractor()
        self.presenter = DragonBallPresenter(dragonBallInteractor: interactor)
        presenter.ui = view
        view.presenter = presenter
    }

    func startDrgonBall(windows: UIWindow?){
        windows?.rootViewController = view
        windows?.makeKeyAndVisible()
    }

    func goToCharacterDetails() {
        
    }
}
