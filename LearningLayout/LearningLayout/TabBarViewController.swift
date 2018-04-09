//
//  UITabBarController.swift
//  LearningLayout
//
//  Created by Engineer on 4/9/18.
//  Copyright © 2018 Engineer. All rights reserved.
//

import Foundation
import UIKit

class AAA : UITabBarController, UITabBarControllerDelegate{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Assign self for delegate for that ViewController can respond to UITabBarControllerDelegate methods
        self.delegate = self as! UITabBarControllerDelegate
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create Tab one
        let tabOne = TabOneController()
        let tabOneBarItem = UITabBarItem(title: "Home", image: UIImage(named: "defaultImage.png"), selectedImage: UIImage(named: "selectedImage.png"))
        
        tabOne.tabBarItem = tabOneBarItem
        
        
        // Create Tab two
        let tabTwo = TabTwoController()
        let tabTwoBarItem2 = UITabBarItem(title: "Categories", image: UIImage(named: "defaultImage2.png"), selectedImage: UIImage(named: "selectedImage2.png"))
        
        tabTwo.tabBarItem = tabTwoBarItem2
        
        // Create Tab Three
        let tabTree = TabTreeController()
        let tabThreeBarItem = UITabBarItem(title: "Categories", image: UIImage(named: "defaultImage2.png"), selectedImage: UIImage(named: "selectedImage2.png"))
        
        tabTree.tabBarItem = tabThreeBarItem
        
        
        self.viewControllers = [tabOne, tabTwo, tabTree]
    }
    
    // UITabBarControllerDelegate method
    func tabBarController(_ tabBarController: UITabBarController, didSelectViewController viewController: UIViewController) {
        print("Selected \(viewController.title!)")
    }
}
