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
        Task(title: "Add more tasks", priority: 5, details: "Start using this program")]
    
    
    // Function adds tasks to array
    func addTask() {
        
        // Prompts user to enter task
        print("Please enter a task to add:")
        
        var addTaskInput: String?
        var addDetailsInput: String?
        var addPriorityInput: Int?
        var addCompleteByDateInput: Task?
        
        // Accepts user input
        addTaskInput = String(readLine()!)
        
        // Prompts user to enter details
        print("Please enter task details:")
        
        // Accepts user input
        addDetailsInput = String(readLine()!)
        
        // Prompts user to enter priority of task from 1-5
        print("Please enter the priority of the task from 1-5 with 5 being the highest:")
        
        // Adds task input to a Task and accepts user input for priority
        addPriorityInput = Int(readLine()!)
        
        // Prompts user to enter complete by date
        print("Please enter complete by date:")
        
        // Accepts user input
        addCompleteByDateInput = Task(title: addTaskInput!, priority: addPriorityInput!, details: addDetailsInput!)
        
        // Adds Task to task array
        taskArray.append(addCompleteByDateInput!)
        
        print("Task added")
    }
    
    
    // TODO:- Print by priority
    
    
    // Function prints both completed and uncompleted tasks
    func allTasks() {
        
        sortTasks()
        for (i, task) in taskArray.enumerated() {

            print("""
                \(i). \(task.title)
                Priority: \(task.priority)
                Details: \(task.details)
                """)

        }
    }
    
    func sortTasks() {
        taskArray = taskArray.sorted { (task1, task2) -> Bool in
            return task1.priority > task2.priority
        }
    }
    

    
    
    // Function prints only completed tasks
    func completedTasks() {
        
        sortTasks()
        for (i, task) in taskArray.enumerated() {
            if task.completed == true {
                print("""
                    \(i). \(task.title)
                    Priority: \(task.priority)
                    Details: \(task.details)
                    """)
            }
        }
    }
    
    
    // Function prints on uncompleted tasks
    func uncompletedTasks() {
        
        sortTasks()
        for (i, task) in taskArray.enumerated() {
            if task.completed == false {
                print("""
                    \(i). \(task.title)
                    Priority: \(task.priority)
                    Details: \(task.details)
                    """)
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
    
    // Function marks task as uncompleted
    func markUncompleted() {
        
        completedTasks()
        
        print("Please enter the number of the task you would like to change to uncompleted:")
        
        var userInput = Int(readLine()!)
        
        while userInput! > taskArray.count-1 || userInput! < 0  {
            print("Please enter a valid number.")
            userInput = Int(readLine()!)
        }
        
        if taskArray[userInput!].completed == false {
            print("This task is already marked completed")
        } else {
            taskArray[userInput!].completed = false
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
        
        print("Please enter the number of the task you would like to edit:")
        
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


