//
//  DocuLiftApp.swift
//  DocuLift
//
//  Created by Kyle Ronayne on 6/26/22.
//

import SwiftUI

@main
struct DocuLiftApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
