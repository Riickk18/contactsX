//
//  ProfileView.swift
//  ContactsX
//
//  Created by Richard Pacheco on 8/31/23.
//

import SwiftUI

struct ProfileView: View {
    @Binding var profile: ProfileModel?
    @Binding var showProfile: Bool

    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        VStack {
            GeometryReader { proxy in
                let size = proxy.size

                if let profile {
                    Image(profile.profilePicture)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: size.width, height: size.height, alignment: .top)
                        .overlay(content: {
                            let color = colorScheme == .dark ? Color.black : Color.white
                            LinearGradient(
                                gradient: Gradient(
                                    colors: [
                                        .clear,
                                        .clear,
                                        .clear,
                                        color.opacity(0.25),
                                        color.opacity(0.5),
                                        color.opacity(0.75),
                                        color.opacity(0.9),
                                        color
                                    ]
                                ),
                                startPoint: .top, endPoint: .bottom)
                        })
                        .clipped()
                }
            }
            .frame(maxHeight: 400)
            .overlay(alignment: .topLeading) {
                Button(action: {
                    showProfile = false
                }, label: {
                    Image(systemName: "xmark")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundStyle(.white)
                        .contentShape(.rect)
                        .padding(10)
                        .background(.black.opacity(0.7), in: .circle)
                })
                .padding([.leading, .top], 20)
            }
            Spacer()
        }

    }
}

#Preview {
    ProfileView(profile: .constant(profiles.first!), showProfile: .constant(true))
}
