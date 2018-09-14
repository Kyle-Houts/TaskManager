//
//  Functions.swift
//  TaskManager
//
//  Created by Kyle Houts on 9/14/18.
//  Copyright © 2018 Kyle Houts. All rights reserved.
//

import Foundation


class Functions {
    
    // Task array
    private var taskArray: [Task] = [
        Task(task: "Add more tasks", priority: 1)]
    
    
    // Function adds tasks to array
    func addTask() {
        
        // Prompts user to enter task
        print("Please enter a task to add:")
        
        var addTaskInput: String?
        var addPriorityInput: Task?
    
        // Accepts user input
        addTaskInput = String(readLine()!)
        
        // Prompts user to enter priority of task from 1-5
        print("Please enter the priority of the task from 1-5 with 5 being the highest:")
        
        // Adds task input to a Task and accepts user input for priority
        addPriorityInput = Task(task: addTaskInput!, priority: Int(readLine()!)!)
        
        // Adds Task to task array
        taskArray.append(addPriorityInput!)
        
        print("Task added")
        
    }
    
    
    // TODO:- Print by priority
    
    
    // Function prints both completed and uncompleted tasks
    func allTasks() {
        
        for (i, task) in taskArray.enumerated() {
            print("\(i). \(task.task) - Priority: \(task.priority)")
        }
    }
    
    
    // Function prints only completed tasks
    func completedTasks() {
        
        for (i, task) in taskArray.enumerated() {
            if task.completed == true {
                print("\(i). \(task.task) - Priority: \(task.priority)")
            }
        }
    }
    
    
    // Function prints on uncompleted tasks
    func uncompletedTasks() {
        
        for (i, task) in taskArray.enumerated() {
            if task.completed == false {
                print("\(i). \(task.task) - Priority: \(task.priority)")
            }
        }
    }
    
    
    // Function marks task as completed
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
    
    
    // Function deletes task from the array
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
    
    // Function allows user to edit a task
    func editTask() {
        
        allTasks()
        
//        print("Please enter the number of the task you would like to edit:")
//
//        var userInput1 = Int(readLine()!)
//
//        print(taskArray[userInput1!])
//
//        print("Please enter what you would like the name of the task changed to:")
//
//        var userInput2 = String(readLine()!)
//
//        print("Please enter the priority of the task from 1-5:")
//
//        var userInput3 = Task(task: userInput2, priority: Int(readLine()!)!)
    }
}


