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
<<<<<<< HEAD

  /*  func setUpViews() {
        viewControllers = [createTabBarItem(title: "Movies", imageName: "rectangle.stack", viewController: MovieTableViewController()), createTabBarItem(title: "Me", imageName: "person", viewController: HomeViewController())]
    } */

=======
    
<<<<<<< HEAD
>>>>>>> bff87f583eb1c45aac66dcb657cbb1f3776a7d40
   /* func setUpViews() {
        viewControllers = [createTabBarItem(title: "Movies", imageName: "rectangle.stack", viewController: MovieTableViewController()), createTabBarItem(title: "Me", imageName: "person", viewController: HomeViewController())]
    }
 */
    
=======

   /* func setUpViews() {
        viewControllers = [createTabBarItem(title: "Movies", imageName: "rectangle.stack", viewController: MovieTableViewController()), createTabBarItem(title: "Me", imageName: "person", viewController: HomeViewController())]
    }*/

>>>>>>> 2a6d74fc3871121ba9399cabb9b7fb177d826f21
    private func createTabBarItem(title: String, imageName: String, viewController: UIViewController) -> UINavigationController {
        
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(systemName: imageName)
        
        return navController
    }
    
}
