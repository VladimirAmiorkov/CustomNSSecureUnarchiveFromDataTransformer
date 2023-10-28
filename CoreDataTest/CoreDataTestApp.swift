//
//  CoreDataTestApp.swift
//  CoreDataTest
//
//  Created by Vladimir Amiorkov on 28.10.23.
//

import SwiftUI

@main
struct CoreDataTestApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
