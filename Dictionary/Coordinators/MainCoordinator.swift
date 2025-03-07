//
//  MainCoordinator.swift
//  Dictionary
//
//  Created by sofia on 05.03.2025.
//

import Foundation
import UIKit


class MainCoordinator: CompositionCoordinator {
    var childCoordinators: [Coordinator] = []
    
    func start() {
        <#code#>
    }
    
    func finish() {
        <#code#>
    }
    
    var finishDelegate: (any CoordinatorFinishDelegate)?
    
    func coordinatorDidFinish(_ coordinator: any Coordinator) {
        if let index = childCoordinators.firstIndex(where: { $0 === coordinator }) {
            childCoordinators.remove(at: index)
        }
            
    }
    
    
}
