//
//  ToDo.swift
//  ToDoList
//
//  Created by Salvador Garcia on 3/28/19.
//  Copyright © 2019 Salvador Garcia. All rights reserved.
//

import UIKit

struct ToDo: Codable {
    var title: String
    var isComplete: Bool
    var dueDate: Date
    var note: String?
    
    static func loadTodos() -> [ToDo]? {
        guard let codedToDos = try? Data(contentsOf: ArchiveURL) else {return nil}
        
        let propertyListDecoder = PropertyListDecoder()
        return try? propertyListDecoder.decode(Array<ToDo>.self, from: codedToDos)
    }
    
    static func loadSampleToDo() -> [ToDo]{
        let todo1 = ToDo(title: "ToDo One", isComplete: false, dueDate: Date(), note: "Note 1")
        let todo2 = ToDo(title: "ToDo Two", isComplete: false, dueDate: Date(), note: "Note 2")
        let todo3 = ToDo(title: "ToDo Three", isComplete: false, dueDate: Date(), note: "Note 3")
        print("I am Sample")
        return [todo1, todo2, todo3]
    }
    
    static func saveToDos(_ todos: [ToDo]){
        let propertyListEncoder = PropertyListEncoder()
        let codedToDos = try? propertyListEncoder.encode(todos)
        try? codedToDos?.write(to: ArchiveURL, options: .noFileProtection)
    }
    
    static let dueDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
        }()
    
    static let DocumentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("toDos").appendingPathExtension("plist")
    
}
