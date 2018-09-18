//
//  Task.swift
//  TaskManager
//
//  Created by Kyle Houts on 9/14/18.
//  Copyright © 2018 Kyle Houts. All rights reserved.
//

import Foundation

class Task {
    
    var title: String
    var details: String
    var completed = false
    var priority: Int
    
    

    
    init(title: String, priority: Int, details: String) {
        self.title = title
        self.details = details
        self.completed = false
        self.priority = priority
        
    }

}


























