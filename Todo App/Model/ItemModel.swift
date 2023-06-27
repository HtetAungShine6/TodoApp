//
//  ItemModel.swift
//  Todo App
//
//  Created by Akito Daiki on 25/5/2566 BE.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let title: String
    let isCompleted: Bool
    let id: String
    
    
    init(Id: String = UUID().uuidString, Title: String, IsCompleted:Bool){
        self.id = Id
        self.title = Title
        self.isCompleted = IsCompleted
    }
    
    
    func updateCompleted() -> ItemModel {
        return ItemModel(Id: id, Title: title, IsCompleted: !isCompleted)
    }
    
}

