//
//  AppDelegate.swift
//  HW15MVCCollectionsView
//
//  Created by Daniil Litvinov on 03.07.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let tabBarController = UITabBarController()
        
        let mediatekaItem = MediatekaViewController()
        let mediaViewController = UINavigationController(rootViewController: mediatekaItem)
        mediaViewController.tabBarItem = UITabBarItem(title: "Медиатека", image: UIImage(systemName: "photo.fill.on.rectangle.fill"), tag: 0)
        
        let forYouItem = ForYouViewController()
        let forYouController = UINavigationController(rootViewController: forYouItem)
        forYouController.tabBarItem = UITabBarItem(title: "Для Вас", image: UIImage(systemName: "heart.text.square.fill"), tag: 1)
        
        let albomsItem = AlbomsViewController()
        let albomsController = UINavigationController(rootViewController: albomsItem)
        albomsController.tabBarItem = UITabBarItem(title: "Альбомы", image: UIImage(systemName: "rectangle.stack.fill"), tag: 2)
        
        let searchItem = SearchViewController()
        let searchController = UINavigationController(rootViewController: searchItem)
        searchController.tabBarItem = UITabBarItem(title: "Поиск", image: UIImage(systemName: "magnifyingglass"), tag: 3)
        
        tabBarController.setViewControllers([
            mediaViewController,
            forYouController,
            albomsController,
            searchController
        ], animated: true)
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        return true
    }
}

