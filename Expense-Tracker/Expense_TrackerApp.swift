//
//  Expense_TrackerApp.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-10.
//

import SwiftUI

@main
struct Expense_TrackerApp: App {
    
    var userData = UserData(categoryDict: DefaultData().categoryTree, colors: DefaultData().categoryColors)
        
    var body: some Scene {
        WindowGroup {
            SubcategoryGridCell(subcategory: userData.categories[0].subcategories[0])
        }
    }
}
