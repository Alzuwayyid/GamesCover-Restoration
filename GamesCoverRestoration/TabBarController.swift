//
//  TabBarController.swift
//  GamesCoverRestoration
//
//  Created by Mohammed Alzuwayyid on 20/08/2022.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
           UITabBar.appearance().barTintColor = .systemBackground
           tabBar.tintColor = .label
        // Do any additional setup after loading the view.
    }
    
    fileprivate func createNavController(for rootViewController: UIViewController,
                                                    title: String,
                                                    image: UIImage) -> UIViewController {
          let navController = UINavigationController(rootViewController: rootViewController)
          navController.tabBarItem.title = title
          navController.tabBarItem.image = image
          navController.navigationBar.prefersLargeTitles = true
          rootViewController.navigationItem.title = title
          return navController
      }
    
    func setupViewControllers(for userActivity: NSUserActivity?) {
        let homeVC = HomeViewController()
        let profileVC = CoversViewController()
        
          viewControllers = [
              createNavController(for: homeVC, title: NSLocalizedString("Home", comment: ""), image: UIImage(systemName: "house")!),
              createNavController(for: profileVC, title: NSLocalizedString("Profile", comment: ""), image: UIImage(systemName: "person")!)
          ]
      }
}
