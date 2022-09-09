//
//  TabBarController.swift
//  AlbumScreen
//
//  Created by Алексей Лосев on 09.09.2022.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        view.backgroundColor = .white
        setupTabBarController()
//        setupTabBarViewControllers()
//        setupBar()
    }
    
    private func setupTabBarController() {
        tabBar.backgroundColor = .systemBackground
        tabBar.tintColor = .systemGray
    }
   
//    private func setupTabBarViewControllers() {
//        let first = LibraryTabBarViewController()
//        let firstIcon = UITabBarItem(title: "Library", image: UIImage(systemName: "photo.artframe"), selectedImage: UIImage(systemName: "house.fill"))
//        first.tabBarItem = firstIcon
//
//        let second = ForYouTabBarViewController()
//        let secondItem = UITabBarItem(title: "For You", image: UIImage(systemName: "heart.text.square"), selectedImage: UIImage(systemName: "heart.text.square.fill"))
//        second.tabBarItem = secondItem
//
//        let third = MainScreenViewController()
//        let thirdIcon = UITabBarItem(title: "Albums", image: UIImage(systemName: "square.stack"), selectedImage: UIImage(systemName: "square.stack.fill"))
//        third.tabBarItem = thirdIcon
//
//        let fourth = SearchTabBarViewController()
//        let fourtIcon = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), selectedImage: UIImage(systemName: "magnifyingglass"))
//        fourth.tabBarItem = fourtIcon
//
//        let controllers = [first, second, third, fourth]
//        self.setViewControllers(controllers, animated: true)
//    }
//    func setupBar() {
//               let media = createNavigationController(viewContoller: LibraryTabBarViewController(),
//                                                     itemName: "Медиа",
//                                                     itemImage: "photo.on.rectangle.fill")
//               let memories = createNavigationController(viewContoller: ForYouTabBarViewController(),
//                                                        itemName: "Для Вас",
//                                                        itemImage: "heart.text.square.fill")
//               let albums = createNavigationController(viewContoller: MainScreenViewController(),
//                                                      itemName: "Альбомы",
//                                                      itemImage: "rectangle.stack.fill")
//               let search = createNavigationController(viewContoller: SearchTabBarViewController(),
//                                                      itemName: "Поиск",
//                                                      itemImage: "magnifyingglass")
//
//               viewControllers = [media, memories, albums, search]
//           }
//
//           func createNavigationController(viewContoller: UIViewController, itemName: String, itemImage: String) -> UINavigationController {
//               let item = UITabBarItem(title: itemName, image: UIImage(systemName: itemImage), selectedImage: UIImage(systemName: itemImage))
//               let navigationContoller = UINavigationController(rootViewController: viewContoller)
//               navigationContoller.tabBarItem = item
//               return navigationContoller
//       }
}
