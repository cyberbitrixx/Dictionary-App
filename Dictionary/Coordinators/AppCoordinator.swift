//
//  AppCoordinator.swift
//  Dictionary
//
//  Created by sofia on 24.02.2025.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    
    private let window: UIWindow?
    private let navigationController: UINavigationController
    var childCoordinators: [Coordinator] = []
    var finishDelegate: CoordinatorFinishDelegate?

    
    init(window: UIWindow?) {
        self.window = window
        self.navigationController = UINavigationController()
        
        // Set window's root view controller
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
      
    

        
    func start() {
        var authCoordinator = AuthCoordinator()
        authCoordinator.finishDelegate = self
        childCoordinators.append(authCoordinator)
        authCoordinator.start()
    }
    
    func finish() {
//        This Coordinator is a root Coordinator and does not need to be finished
//        The method exists here to conform to Coordinator protocol
    }
    
    func coordinatorDidFinish(_ coordinator: any Coordinator) {
//        Check if user is authenticated -> fetch user profile from Firebase and push Home screen with him being logged in || if user is not logged in push Home screen anyway but without fetched user profile (UserDefaults persist and fetch the data locally in that case)
        
    }
}
