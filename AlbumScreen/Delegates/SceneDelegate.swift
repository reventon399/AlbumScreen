//
//  SceneDelegate.swift
//  AlbumScreen
//
//  Created by Алексей Лосев on 08.09.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = createTabBarController()
        window?.makeKeyAndVisible()
    }
    
    func createLibraryViewController() -> UINavigationController {
        let libraryViewController = LibraryTabBarViewController()
        libraryViewController.title = "Library"
        libraryViewController.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "photo.artframe"), tag: 0)
        return UINavigationController(rootViewController: libraryViewController)
    }
    
    func createForYouViewController() -> UINavigationController {
        let forYouViewController = ForYouTabBarViewController()
        forYouViewController.title = "For You"
        forYouViewController.tabBarItem = UITabBarItem(title: "For You", image: UIImage(systemName: "heart.text.square"), tag: 1)
        return UINavigationController(rootViewController: forYouViewController)
    }
    
    func createAlbumsViewController() -> UINavigationController {
        let albumsViewController = MainScreenViewController()
        albumsViewController.tabBarItem = UITabBarItem(title: "Albums", image: UIImage(systemName: "square.stack"), tag: 2)
        return UINavigationController(rootViewController: albumsViewController)
    }
    
    func createSearchViewController() -> UINavigationController {
        let searchViewController = SearchTabBarViewController()
        searchViewController.title = "Search"
        searchViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 3)
        return UINavigationController(rootViewController: searchViewController)
    }
    
    func createTabBarController() -> UITabBarController {
        let tabBarController = TabBarController()
        UITabBar.appearance().tintColor = .systemBlue
        tabBarController.viewControllers = [createLibraryViewController(),
                                            createForYouViewController(),
                                            createAlbumsViewController(),
                                            createSearchViewController()]
        return tabBarController
    }
}
