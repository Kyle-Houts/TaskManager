//
//  Functions.swift
//  TaskManager
//
//  Created by Kyle Houts on 9/14/18.
//  Copyright © 2018 Kyle Houts. All rights reserved.
//

import Foundation


class Functions {
    
    private var taskArray: [Task] = [
        Task(task: "Add more tasks")]
    
    func addTask() {
        
        print("Please enter a task to add:")
        
        var addTaskInput: Task?
        
        addTaskInput = Task(task: readLine()!)
        
        taskArray.append(addTaskInput!)
        
        print("Task added")
        
    }
    
    func allTasks() {
        
        
        for (i, task) in taskArray.enumerated() {
            print("\(i). \(task.task)")
        }
        
    }
    
    func completedTasks() {
        
        for (i, task) in taskArray.enumerated() {
            if task.completed == true {
                print("\(i). \(task.task)")
            }
        }
        
    }
    
    func uncompletedTasks() {
        
        for (i, task) in taskArray.enumerated() {
            if task.completed == false {
                print("\(i). \(task.task)")
            }
        }
    }
    
    func markCompleted() {
        
        uncompletedTasks()
        
        print("Please enter the number of the task you have completed:")
        
        var userInput = Int(readLine()!)
        
        while userInput! > taskArray.count-1 || userInput! < 0  {
            print("Please enter a valid number.")
            userInput = Int(readLine()!)
        }
        
        if taskArray[userInput!].completed == true {
            print("This task is already marked completed")
        } else {
            taskArray[userInput!].completed = true
            print("Thank you for completing this task")
        }
    }
    
    func deleteTask() {
        
        allTasks()
        
        
        print("Please enter the number of the task you would like to delete:")
        
        var userInput = Int(readLine()!)
        
        while userInput! > taskArray.count-1 || userInput! < 0  {
            print("Please enter a valid number.")
            userInput = Int(readLine()!)
        }
        
        taskArray.remove(at: userInput!)
        print("Task removed")
    }
    
}


