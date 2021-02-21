//
//  TabBarController.swift
//  Alliance
//
//  Created by Sarah Young on 2/21/21.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // setUpViews()
    }
    

   /* func setUpViews() {
        viewControllers = [createTabBarItem(title: "Movies", imageName: "rectangle.stack", viewController: MovieTableViewController()), createTabBarItem(title: "Me", imageName: "person", viewController: HomeViewController())]
    }
 */
    


   /* func setUpViews() {
        viewControllers = [createTabBarItem(title: "Movies", imageName: "rectangle.stack", viewController: MovieTableViewController()), createTabBarItem(title: "Me", imageName: "person", viewController: HomeViewController())]
    }*/


    private func createTabBarItem(title: String, imageName: String, viewController: UIViewController) -> UINavigationController {
        
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(systemName: imageName)
        
        return navController
    }
    
}
