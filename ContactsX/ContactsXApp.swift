//
//  ContactsXApp.swift
//  ContactsX
//
//  Created by Richard Pacheco on 8/29/23.
//

import SwiftUI
import SwiftData

@main
struct ContactsXApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Item.self)
    }
}
