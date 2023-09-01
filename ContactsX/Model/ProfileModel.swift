//
//  ProfileModel.swift
//  ContactsX
//
//  Created by Richard Pacheco on 8/31/23.
//

import Foundation

struct ProfileModel: Identifiable {
    let id = UUID().uuidString
    let name: String
    let lastName: String
//    let lastMessage: MessageModel?
    let lastActive: String
    let profilePicture: String

    var fullName: String {
        get {
            return name + " " + lastName
        }
    }
}

let profiles = [
    ProfileModel(name: "Black", lastName: "Panther", lastActive: "18:36", profilePicture: "black-panther"),
    ProfileModel(name: "Iron", lastName: "Man", lastActive: "17:35", profilePicture: "iron-man"),
    ProfileModel(name: "Scarlet", lastName: "Witch", lastActive: "Just now", profilePicture: "scarlet-witch"),
    ProfileModel(name: "Thanos", lastName: "The Titan", lastActive: "Bleep", profilePicture: "thanos"),
    ProfileModel(name: "Spider", lastName: "Man", lastActive: "19:20", profilePicture: "spider-man"),
    ProfileModel(name: "Miles", lastName: "Morales", lastActive: "yesterday", profilePicture: "miles-morales"),
    ProfileModel(name: "Captain", lastName: "America", lastActive: "yesterday", profilePicture: "captain-america")
]
