//
//  TabBarViewController.swift
//  PivotControlCenterApp
//
//  Created by Ingel Agro on 18.1.22..
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = HomeViewController()
        let vc2 = NewProjectViewController()
        let vc3 = ProjectsViewController()
        
        vc1.title = "Home"
        vc2.title = "New Project"
        vc3.title = "Projects"
        
        vc1.navigationItem.largeTitleDisplayMode = .always
        vc2.navigationItem.largeTitleDisplayMode = .always
        vc3.navigationItem.largeTitleDisplayMode = .always
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
        
        nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "New Projcet", image: UIImage(systemName: "plus"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Projects", image: UIImage(systemName: "list.bullet"), tag: 3)
        
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        nav3.navigationBar.prefersLargeTitles = true
        
        setViewControllers([nav1, nav2, nav3], animated: false)
    }
  
}
