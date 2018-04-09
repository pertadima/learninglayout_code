//
//  HomeActivityController.swift
//  LearningLayout
//
//  Created by Engineer on 4/9/18.
//  Copyright © 2018 Engineer. All rights reserved.
//

import Foundation
import UIKit

class HomeActivityController : UITabBarController, UITabBarControllerDelegate{
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate=self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create Tab one
        let tabOne = TabOneController()
        let tabOneBarItem = UITabBarItem(title: "Home", image: UIImage(named: "icon"), selectedImage: UIImage(named: "selectedImage.png"))
        
        tabOne.tabBarItem = tabOneBarItem
        
        
        // Create Tab two
        let tabTwo = TabTwoController()
        let tabTwoBarItem2 = UITabBarItem(title: "Categories", image: UIImage(named: "icon.png"), selectedImage: UIImage(named: "selectedImage2.png"))
        
        tabTwo.tabBarItem = tabTwoBarItem2
        
        // Create Tab Three
        let tabThree = TabTreeController()
        let tabThreeBarItem2 = UITabBarItem(title: "Profile", image: UIImage(named: "icon.png"), selectedImage: UIImage(named: "selectedImage2.png"))
        
        tabThree.tabBarItem = tabThreeBarItem2
        
        
        
        self.viewControllers = [tabOne, tabTwo, tabThree]
    }
    
    // UITabBarControllerDelegate method
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
