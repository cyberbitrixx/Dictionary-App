//
//  AuthCoordinator.swift
//  Dictionary
//
//  Created by sofia on 24.02.2025.
//

import Foundation

class AuthCoordinator: Coordinator {
    func start() {
//        grandchild Coordinator initialization goes here
    }
    
    func coordinatorDidFinish(_ coordinator: any Coordinator) {
//        <#code#>
    }
    
    var finishDelegate: CoordinatorFinishDelegate? = nil
    
    func finish() {
        finishDelegate?.coordinatorDidFinish(self)
    }
}
