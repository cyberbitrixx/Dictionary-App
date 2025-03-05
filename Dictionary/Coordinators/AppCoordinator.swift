//
//  AppCoordinator.swift
//  Dictionary
//
//  Created by sofia on 24.02.2025.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    func finish() {
        <#code#>
    }
    
    var finishDelegate: (any CoordinatorFinishDelegate)?
    
    func coordinatorDidFinish(_ coordinator: any Coordinator) {
        <#code#>
    }
    
    var childCoordinators: [Coordinator] = []
    
    func start() {
        var authCoordinator = AuthCoordinator()
        authCoordinator.finishDelegate = self
        childCoordinators.append(authCoordinator)
        authCoordinator.start()
    }
}
