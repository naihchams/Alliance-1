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

=======
>>>>>>> 7cbd8161046d8800147bdd1f7bbee54c2d9e9be9

  /*  func setUpViews() {
        viewControllers = [createTabBarItem(title: "Movies", imageName: "rectangle.stack", viewController: MovieTableViewController()), createTabBarItem(title: "Me", imageName: "person", viewController: HomeViewController())]
    } */

<<<<<<< HEAD
=======
   /* func setUpViews() {
        viewControllers = [createTabBarItem(title: "Movies", imageName: "rectangle.stack", viewController: MovieTableViewController()), createTabBarItem(title: "Me", imageName: "person", viewController: HomeViewController())]
    }
 */
    

>>>>>>> 7cbd8161046d8800147bdd1f7bbee54c2d9e9be9



    private func createTabBarItem(title: String, imageName: String, viewController: UIViewController) -> UINavigationController {
        
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(systemName: imageName)
        
        return navController
    }
    
}
