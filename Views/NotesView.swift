//
//  NotesView.swift
//  BioTutor
//
//  Created by Kaveh Naini on 2/9/25.
//

import SwiftUI

struct NotesView: View {
    @Environment(\.colorScheme) var colorScheme
    let noteId: String
    var note: Note? {
        NotesData.getNote(for: noteId)
    }
    
    var body: some View {
        ZStack {
            Color(red: 0.12, green: 0.24, blue: 0.18)
                .ignoresSafeArea()
            ScrollView {
            VStack {
                if let note = note {
                    Text(note.content)
                        .padding()

                } else {
                    Text("No notes found.")
                        .foregroundColor(.red)
                }
            }
        }
            .navigationTitle("Notes \(noteId)")
        }
    }
}
#Preview {
    NotesView(noteId: "1.1")
}
