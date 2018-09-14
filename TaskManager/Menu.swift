//
//  Menu.swift
//  TaskManager
//
//  Created by Kyle Houts on 9/14/18.
//  Copyright © 2018 Kyle Houts. All rights reserved.
//

import Foundation

class Menu {
    
    var shouldQuit = false
    
    let functions = Functions()
   
    
    func go() {
        help()
        
        repeat {
            
            var input = getInput()
            
            while validateInput(input) == false {
                print("Invalid input")
                input = getInput()
            }
            
            handleInput(input)
            
        } while !shouldQuit
    }
    
    
    
    // Function prints the menu
    func help() {
        print("""

        Main Menu
        1. Create new task
        2. See all tasks
        3. See completed tasks
        4. See uncompleted tasks
        5. Mark a task as complete
        6. Edit a task
        7. Delete a task
        8. Menu
        9. Exit
        """)
    }
    
    // Function directs to other functions based on user input
    func handleInput(_ input: String) {
        switch input {
        case "1":
            functions.addTask()
            help()
        case "2":
            functions.allTasks()
            help()
        case "3":
            functions.completedTasks()
            help()
        case "4":
            functions.uncompletedTasks()
            help()
        case "5":
            functions.markCompleted()
            help()
        case "6":
            functions.editTask()
            help()
        case "7":
            functions.deleteTask()
            help()
        case "8":
            help()
        case "9":
            quit()
        default:
            break
        }
    }
    
    // Function quits task manager
    func quit() {
        shouldQuit = true
        print("Thanks for coming")
    }
    
    
    func validateInput (_ input: String) -> Bool {
        let menuOptions = Array(1...9)
        
        guard let number = Int(input) else {return false}
        
        return menuOptions.contains(number)
    }
    
    func getInput() -> String {
        var input: String? = nil
        repeat {
            let line = readLine()!.trimmingCharacters(in: .whitespacesAndNewlines)
            if line != "" {
                input = line
                
            } else {
                print("Invalid input.")
            }
        } while input == nil
        return input!
    }
    
}





















