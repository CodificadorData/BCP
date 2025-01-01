//
//  CharactersCoordinator.swift
//  ExampleBanner
//
//  Created by Christian Morante on 1/01/25.
//

import UIKit
class CharactersCoordinator: CoordinatorProtocol {
    
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }

    func start() {
        let charactersVC = CharactersView()
        navigationController?.pushViewController(charactersVC, animated: true)
    }
}
