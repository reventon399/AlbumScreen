//
//  TabBarController.swift
//  AlbumScreen
//
//  Created by Алексей Лосев on 09.09.2022.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        setupTabBarController()
        setupTabBarViewControllers()
    }
    
    private func setupTabBarController() {
        
    }
    
    private func setupTabBarViewControllers() {
        
    }
}
