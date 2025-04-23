//
//  AppCoordinator.swift
//  Dictionary
//
//  Created by sofia on 24.02.2025.
//

import Foundation
import UIKit

/// First Coordinator in hierarchy. Take away navigation esponsibility from AppDelegate and SceneDelegate, and setup window and root view controller. Initiate Main Coordinator flow
class AppCoordinator: CompositionCoordinator {
    
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
//        Check if user is authenticated -> fetch user profile from Firebase and push Home screen with him being logged in || if user is not logged in push Home screen anyway but without fetched user profile (UserDefaults persist and fetch the data locally in that case)
        
//        Initialize MainCoordinator flow (might need to initialize a different coordinator)
        let mainCoordinator = MainCoordinator()
        mainCoordinator.finishDelegate = self
        childCoordinators.append(mainCoordinator)
        mainCoordinator.start()
    }
    
    func finish() {
//        This Coordinator is a root Coordinator and does not need to be finished
//        The method exists here to conform to Coordinator protocol
    }
    
    /// Remove coordinator from coordinators array once finished
    /// - Parameter coordinator: a coordinator we're trying to remove
    func coordinatorDidFinish(_ coordinator: any Coordinator) {
        if let index = childCoordinators.firstIndex(where: { $0 === coordinator }) {
            childCoordinators.remove(at: index)
        }
        
//        Decide what flow to begin
//        if coordinator is AuthCoordinator {
//            startMainFlow()
//        }
    }
}
