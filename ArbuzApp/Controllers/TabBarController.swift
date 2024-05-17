//
//  TabBarController.swift
//  ArbuzApp
//
//  Created by Исмаил Орумбеков on 17.05.2024.
//

import Foundation
import SwiftUI
import UIKit


class TabBarViewController: UITabBarController{
    override func viewDidLoad() {
        setUpControllers()
        tabBar.tintColor = .white
    }
    
//    func setUpControllers(){
//        let mainVc = MainViewController()
//        mainVc.navigationItem.largeTitleDisplayMode = .always
//        
//        let bucketVC = BucketViewController()
//        bucketVC.navigationItem.largeTitleDisplayMode = .always
//        
//        
//        
//        let nav1 = UINavigationController(rootViewController: mainVc)
//        let nav2 = UINavigationController(rootViewController: bucketVC)
//        
//        nav1.navigationBar.prefersLargeTitles = true
//        nav2.navigationBar.prefersLargeTitles = true
//        
//        nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
//        nav2.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "basket"), tag: 2)
//        
//        setViewControllers([nav1, nav2], animated: true)
//    }
    
    func setUpControllers() {
            let homeView = MainPageView()
            let homeVC = UIHostingController(rootView: homeView)
            homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
            
            let busketPageView = BusketPageView()
            let profileVC = UIHostingController(rootView: busketPageView)
            profileVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "basket"), tag: 2)
            
            setViewControllers([homeVC, profileVC], animated: true)
        }
}
