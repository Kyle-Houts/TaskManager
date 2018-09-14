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
    
    
    
    
    func help() {
        print("""


        Main Menu
        1. Create new task
        2. See all tasks
        3. See completed tasks
        4. See uncompleted tasks
        5. Mark a task as complete
        6. Delete a task
        7. Menu
        8. Exit
        """)
    }
    
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
            functions.deleteTask()
            help()
        case "7":
            help()
        case "8":
            quit()
        default:
            break
        }
    }
    
    func quit() {
        shouldQuit = true
        print("Thanks for coming")
    }
    
    func validateInput (_ input: String) -> Bool {
        let menuOptions = Array(0...8)
        
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





















