//
//  HomeView.swift
//  ContactsX
//
//  Created by Richard Pacheco on 8/31/23.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedProfile: ProfileModel?
    @State private var showProfile: Bool = false

    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 20) {
                ForEach(profiles) { profile in
                    VStack {
                        HStack(spacing: 12) {
                            Image(profile.profilePicture)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())

                            VStack(alignment: .leading, spacing: 4) {
                                Text(profile.fullName)
                                Text("Text example message")
                            }

                            Spacer()
                        }
                        .frame(maxWidth: .infinity, maxHeight: 100)

                        Rectangle()
                            .foregroundColor(.gray.opacity(0.3))
                            .frame(height: 1)
                    }
                    .onTapGesture {
                        selectedProfile = profile
                        showProfile.toggle()
                    }
                }
            }
            .padding()
        }
        .scrollIndicators(.hidden)

        .sheet(isPresented: $showProfile) {
            ProfileView(profile: $selectedProfile, showProfile: $showProfile)
                .presentationDetents([.medium, .large])
                .presentationCornerRadius(25)
                .interactiveDismissDisabled()
                .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
