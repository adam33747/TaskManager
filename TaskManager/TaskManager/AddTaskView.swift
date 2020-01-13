//
//  AddTaskView.swift
//  TaskManager
//
//  Created by Adam Hu on 1/8/20.
//  Copyright © 2020 Adam Hu. All rights reserved.
//

import SwiftUI

struct AddTaskView: View {
    @Environment(\.managedObjectContext) var moc
    @Environment(\.presentationMode) var presentationMode
    @State private var title = ""
     @State private var desc = ""
    @State private var urgency = "Optional"
    let urgencies = ["   Very important   ", "  Important  ", " Not important ", "Optional"]
    var body: some View {
        NavigationView {
            Form {
                TextField("Enter title", text: $title)
                TextField("Enter a description", text: $desc)
            Section {
                Picker("Level of importance", selection: $urgency) {
                    ForEach(urgencies, id: \.self) {
                        Text("\($0)")
                    }
                }
                
            }
            Section {
                
                
                Button("Save") {
                    let newTask = Task(context: self.moc)
                    newTask.title = self.title
                    newTask.desc = self.desc
                    newTask.urgency = self.urgency
                    try? self.moc.save()
                    self.presentationMode.wrappedValue.dismiss()
                }.buttonStyle(SaveButton())
                    .disabled(title.isEmpty)
                Button("Cancel") {
                    self.presentationMode.wrappedValue.dismiss()
                }.buttonStyle(SaveButton())
            }
        .navigationBarTitle("New Task")
        }
    }
}
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
    }
}
