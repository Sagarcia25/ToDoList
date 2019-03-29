//
//  ToDo.swift
//  ToDoList
//
//  Created by Salvador Garcia on 3/28/19.
//  Copyright © 2019 Salvador Garcia. All rights reserved.
//

import Foundation

struct ToDo {
    var title: String
    var isComplete: Bool
    var duedate: Date
    var note: String?
    
    static func loadTodos() -> [ToDo]? {
        return nil
    }
}
