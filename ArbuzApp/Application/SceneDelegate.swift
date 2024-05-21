//
//  SceneDelegate.swift
//  ArbuzApp
//
//  Created by Исмаил Орумбеков on 17.05.2024.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        
        let vc = TabBarViewController()
        window.rootViewController = vc
        window.makeKeyAndVisible()
        self.window = window

    }

    func presentViewController(view: some View){
        let hostingController = UIHostingController(rootView: view)
        let navigationController = UINavigationController(rootViewController: hostingController)
        navigationController.modalPresentationStyle = .fullScreen
        
        window?.rootViewController?.present(navigationController, animated: true)
    }
    
//    func presentViewController() {
//            let productDetailView = ProductDetailView(productID: product.id, navigationController: nil)
//            let hostingController = UIHostingController(rootView: productDetailView)
//            hostingController.modalPresentationStyle = .fullScreen
//            
//            let navigationController = UINavigationController(rootViewController: hostingController)
//            navigationController.modalPresentationStyle = .fullScreen
//            
//            UIApplication.shared.windows.first?.rootViewController?.present(navigationController, animated: true, completion: nil)
//        }

}

