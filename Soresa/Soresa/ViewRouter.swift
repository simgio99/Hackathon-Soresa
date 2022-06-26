import Foundation


enum ViewStatus {
    case login,
         main,
         onboarding,
         map,
         detail,
         doctorList
}

class ViewRouter: ObservableObject {
    
    @Published public var currentView: ViewStatus = .login
    init() {
        
    }
}
