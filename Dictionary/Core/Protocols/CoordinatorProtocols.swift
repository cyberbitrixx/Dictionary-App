//
//  CoordinatorProtocols.swift
//  Dictionary
//
//  Created by sofia on 04.03.2025.
//

import Foundation
import UIKit

/// Provide Coordinator with ability to communicate to it's Parent Coordinator once it's finished with work
protocol CoordinatorFinishDelegate: AnyObject {
    func coordinatorDidFinish(_ coordinator: Coordinator)
}

/// Main Coordinator protocol, specifying start(), finish() methods and finishDelegate preperty to communicate to Parent Coordinator that Child Coordinator can be removed from it's list
protocol Coordinator: CoordinatorFinishDelegate {
    func start()
    func finish()
    
    var finishDelegate: CoordinatorFinishDelegate? { get set }
}

/// Protocol for Coordinators with linear flow (can only have one Child Coordinator)
protocol FlowCoordinator: Coordinator {
    var childCoordinator: Coordinator? { get set }
}

/// Protocol for Coordinators that are responsible for multiple Child Coordinators
protocol CompositionCoordinator: Coordinator {
    var childCoordinators: [Coordinator] { get set }
}
