//
//  SoresaApp.swift
//  Soresa
//
//  Created by Simone Giordano on 25/06/22.
//

import SwiftUI

@main
struct SoresaApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject var viewRouter = ViewRouter()
    var body: some Scene {
        WindowGroup {
            switch viewRouter.currentView {
            case .login:
                LoginView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    .environmentObject(viewRouter)
                    
            case .onboarding:
                ContentView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    .transition(.move(edge: .top))
                
            case .main:
                ContentView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    .transition(.move(edge: .top))
                
            case .map:
                MapDoctorView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    .transition(.move(edge: .top))
            }
        }
    }
}
