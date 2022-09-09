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
        setupTabBarController()
    }
    private func setupTabBarController() {
        _ = UIBarStyle(rawValue: 2)
        tabBar.tintColor = .systemGray
    }

}
