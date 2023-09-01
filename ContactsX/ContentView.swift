//
//  ContentView.swift
//  ContactsX
//
//  Created by Richard Pacheco on 8/29/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        NavigationStack {
            HomeView()
                .navigationTitle("Chats")
        }
    }
}

#Preview {
    ContentView()
}
