//
//  ToDo.swift
//  ToDoList
//
//  Created by Salvador Garcia on 3/28/19.
//  Copyright © 2019 Salvador Garcia. All rights reserved.
//

import UIKit

struct ToDo {
    var title: String
    var isComplete: Bool
    var duedate: Date
    var note: String?
    
    static func loadTodos() -> [ToDo]? {
        return nil
    }
    
    static func loadSampleToDo() -> [ToDo]{
        let todo1 = ToDo(title: "ToDo One", isComplete: false, duedate: Date(), note: "Note 1")
        let todo2 = ToDo(title: "ToDo Two", isComplete: false, duedate: Date(), note: "Note 2")
        let todo3 = ToDo(title: "ToDo Three", isComplete: false, duedate: Date(), note: "Note 3")
        print("I am Sample")
        return [todo1, todo2, todo3]
    }
}
