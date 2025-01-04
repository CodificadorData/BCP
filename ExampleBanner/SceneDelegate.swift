//
//  SceneDelegate.swift
//  ExampleBanner
//
//  Created by Christian Alexander Morante Santander on 27/12/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    public static let dragonBallRouter = MainRouter()
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        SceneDelegate.dragonBallRouter.startDrgonBall(windows: window)
    }

}
