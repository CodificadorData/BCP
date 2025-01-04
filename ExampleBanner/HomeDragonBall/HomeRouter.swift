//
//  HomeRouter.swift
//  ExampleBanner
//
//  Created by Christian Morante on 18/02/24.
//

import Foundation
import UIKit

class DragonBallRouter {
    
    func goToCharactersDetail(mainView: UIViewController, characterView: UIViewController) {
        mainView.navigationController?.pushViewController(characterView, animated: true)
    }
    
}
