//
//  Category.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-11.
//

import SwiftUI

struct Category: Hashable, Identifiable {
    let id = UUID()
    var name: String
    var subcategories: [String]
    var color: Color
}


struct MockData {
    let categories = [Category(name: "Income",
                               subcategories: ["Work", "Savings", "Side Income"],
                               color: .green),
                      
                      Category(name: "Unusual Expenses",
                               subcategories: ["Supplies", "Gifts", "Travel", "Medical", "Car Maintenance"],
                               color: .red),
                      
                      Category(name: "Recurring Expenses",
                               subcategories: ["Housing", "Hydro", "Tenant Insurance", "Laundry", "Internet","Cell Phone", "Car Insurance"],
                               color: .blue),
                      
                      Category(name: "Subscriptions",
                               subcategories: ["iCloud", "Spotify", "Amazon"],
                               color: .yellow),
                      
                      Category(name: "Monthly Expenses",
                               subcategories: ["Food", "Take-out", "Substances", "Haircut", "Gas", "Parking", "Clothes", "Entertainment", "Gym",
                                               "Bank Fees", "Line of Credit"],
                               color: .pink)]
}
