//
//  TaskView.swift
//  TaskManager
//
//  Created by Adam Hu on 1/8/20.
//  Copyright © 2020 Adam Hu. All rights reserved.
//

import SwiftUI

struct TaskView: View {
    var title:String = ""
    var urgency:String = ""
   
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(title).fontWeight(.light)
                    .font(.headline)
                if self.urgency == "   Very important   " {
                   Text("  Very Important  ")
                    .fontWeight(.medium)
                        .padding(1.5)
                    .background(Color.red)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .font(.caption)
                }
                
                if self.urgency == "  Important  " {
                   Text("  Important  ")
                    .fontWeight(.medium)
                        .padding(1.5)
                    .background(Color.orange)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .font(.caption)
                }
                if self.urgency == " Not important " {
                    Text("  Not Important  ")
                    .fontWeight(.medium)
                        
                        .padding(1.5)
                    .background(Color.yellow)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .font(.caption)
                }
            
                if self.urgency == "Optional" {
                    Text("  Optional  ")
                    .fontWeight(.medium)
                        .padding(1.5)
                    .background(Color.green)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .font(.caption)
                }
                
                
            }
        }
        
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
    }
}
