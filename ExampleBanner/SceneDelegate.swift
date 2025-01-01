//
//  SceneDelegate.swift
//  ExampleBanner
//
//  Created by Christian Alexander Morante Santander on 27/12/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var homeCoordinator: HomeCoordinator?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let navigationController = UINavigationController()
        homeCoordinator = HomeCoordinator(navigationController: navigationController)
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
        homeCoordinator?.start()
    }

}
