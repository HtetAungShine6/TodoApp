//
//  Todo_AppApp.swift
//  Todo App
//
//  Created by Akito Daiki on 25/5/2566 BE.
//

import SwiftUI

@main
struct Todo_AppApp: App {
    
    @StateObject var listviewmodel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listviewmodel)
        }
    }
}
