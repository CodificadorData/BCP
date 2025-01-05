//
//  HomeRouter.swift
//  ExampleBanner
//
//  Created by Christian Morante on 18/02/24.
//

import UIKit

class DragonBallRouter {
    
    func goToCharactersDetail(mainView: UIViewController, dragonBallModel: Item) {
        let charactersView = CharactersView(dragonBallModel: dragonBallModel)
        mainView.navigationController?.pushViewController(charactersView, animated: true)
    }
    
}
