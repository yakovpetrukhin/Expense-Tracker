//
//  Expense_TrackerApp.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-10.
//

import SwiftUI

@main
struct Expense_TrackerApp: App {
    
    @State private var user = UserData(categoryDict: DefaultData().categoryTree, colors: DefaultData().categoryColors)
        
    var body: some Scene {
        WindowGroup {
            ExpenseTabView(user: user)
        }
    }
}
