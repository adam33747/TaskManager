//
//  DetailView.swift
//  TaskManager
//
//  Created by Adam Hu on 1/8/20.
//  Copyright © 2020 Adam Hu. All rights reserved.
//

import CoreData
import SwiftUI

struct DetailView: View {
    let task: Task
    var body: some View {
        
            List {
               
                Text("\(self.task.title ?? "Unknown Title")").font(.largeTitle)
                    .bold()
            
                       
                       
                       Text(" \(self.task.desc ?? "No description")")
                if self.task.urgency == "   Very important   " {
                       Text("  Very Important  ")
                        .fontWeight(.bold)
                            .padding(1.5)
                        .background(Color.red)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        //.font(.caption)
                    }
                    
                if self.task.urgency == "  Important  " {
                       Text("  Important  ")
                        .fontWeight(.bold)
                            .padding(1.5)
                        .background(Color.orange)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        //.font(.caption)
                    }
                if self.task.urgency == " Not important " {
                        Text("  Not Important  ")
                        .fontWeight(.bold)
                            .padding(1.5)
                        .background(Color.yellow)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        //.font(.caption)
                    }
                
                if self.task.urgency == "Optional" {
                        Text("  Optional  ")
                        .fontWeight(.bold)
                            .padding(1.5)
                        .background(Color.green)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        //.font(.caption)
                    }
                       
                
                
        
            }
    }
    
}


struct DetailView_Previews: PreviewProvider {
    static let moc = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
    
    static var previews: some View {
        let task = Task(context: moc) 
        task.title = "Test title"
        task.desc  = "Test Desc"
        task.urgency = "Optional"
        return NavigationView {
            DetailView(task: task)
        }
    }
}

