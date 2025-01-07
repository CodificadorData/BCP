//
//  HomeRouter.swift
//  ExampleBanner
//
//  Created by Christian Morante on 18/02/24.
//

import UIKit

class HomeRouter {
    
    func goToCharacterDetail(mainView: UIViewController, dragonBallModel: Item) {
        let charactersView = CharacterViewController(dragonBallModel: dragonBallModel)
        mainView.navigationController?.pushViewController(charactersView, animated: true)
    }
    
}
