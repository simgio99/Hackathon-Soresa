//
//  ViewRouter.swift
//  Soresa
//
//  Created by Simone Giordano on 25/06/22.
//

import Foundation


enum ViewStatus {
    case login, main, onboarding
}

class ViewRouter: ObservableObject {
    
    @Published public var currentView: ViewStatus = .login
    init() {
        
    }
}
