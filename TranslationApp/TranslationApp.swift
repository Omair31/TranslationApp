//
//  TranslationApp.swift
//  TranslationApp
//
//  Created by M on 13/06/2024.
//

import SwiftUI

@main
struct TranslationApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                CommentView(userComments: [
                    UserComment(text: "Hello, Welcome to my channel!"),
                    UserComment(text: "I am so excited to teach you about translation"),
                    UserComment(text: "Follow for more updates"),
                ])
            }
        }
    }
}
