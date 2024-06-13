//
//  CommentView.swift
//  TranslationApp
//
//  Created by M on 13/06/2024.
//

import SwiftUI
import Translation

struct UserComment: Identifiable {
    let id = UUID().uuidString
    let text: String
}

struct CommentView: View {
    
    let userComments: [UserComment]
    @State private var showsTranslation = false
    
    var body: some View {
        VStack(alignment: .leading) {
            List {
                ForEach(userComments) { userComment in
                    CommentRowView(userComment: userComment)
                }
            }
        }
        .navigationBarTitle("My Translations")
    }
}

struct CommentRowView: View {
    
    let userComment: UserComment
    @State private var showsTranslation = false
    
    var body: some View {
        HStack {
            Text(userComment.text)
            Spacer()
            Menu {
                Button("View User", action: { })
                Button {
                    showsTranslation = true
                } label: {
                    Text("Translate")
                }
            } label: {
                Label("", systemImage: "ellipsis.circle")
            }
            .foregroundStyle(Color.accentColor)
            .menuStyle(.button)
        }
        .translationPresentation(isPresented: $showsTranslation, text: userComment.text)
    }
}

#Preview {
    CommentView(userComments: [UserComment(text: "Hello")])
}

