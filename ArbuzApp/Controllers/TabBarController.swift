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
    

    
    func setUpControllers() {
        
            let homeView = MainPageView()
            
            let homeVC = UIHostingController(rootView: homeView)
        
            homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
            
            let busketPageView = BusketPageView(viewModel: BusketViewModel.shared)
            let profileVC = UIHostingController(rootView: busketPageView)
            profileVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "basket"), tag: 2)
            
            setViewControllers([homeVC, profileVC], animated: true)
        }
}
