//
//  DatosAppApp.swift
//  DatosApp
//
//  Created by Karla Flores on 30/09/26.
//


import SwiftUI
import SwiftData

@main
struct DatosAppApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Product.self,
        ])
        
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
