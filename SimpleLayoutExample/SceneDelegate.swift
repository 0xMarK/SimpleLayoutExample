//
//  SceneDelegate.swift
//  SimpleLayoutExample
//
//  Created by Anton Kaliuzhnyi on 20.05.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let tabBarViewController = UITabBarController()
        tabBarViewController.viewControllers = [
            UINavigationController(rootViewController: ItemsViewController()),
            UINavigationController(rootViewController: ProfileViewController())
        ]
        window?.rootViewController = tabBarViewController
        window?.makeKeyAndVisible()
    }
    
}

