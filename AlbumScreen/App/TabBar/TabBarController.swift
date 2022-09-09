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
    }
    
    private func setupTabBarController() {
        let blurEffect = UIBlurEffect(style: .prominent) // here you can change blur style
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = tabBar.bounds
        blurView.autoresizingMask = .flexibleWidth
        tabBar.insertSubview(blurView, at: 0)
        tabBar.tintColor = .systemGray
    }

}
