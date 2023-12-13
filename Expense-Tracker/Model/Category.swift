//
//  Category.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-11.
//

import SwiftUI

struct Category: Identifiable {
    let id = UUID()
    
    var name: String
    var subcategories: [Subcategory]
    
    var color: Color
    var totalAmount: Double = 0.0
}

let incomeSubcat            = [Subcategory(name: "Work"),
                               Subcategory(name: "Savings"),
                               Subcategory(name: "Side Income")]

let surpriseExpenseSubcat   = [Subcategory(name: "Supplies"),
                               Subcategory(name: "Gifts"),
                               Subcategory(name: "Travel"),
                               Subcategory(name: "Medical"),
                               Subcategory(name: "Car Maintenance")]

let recurringExpenseSubcat  = [Subcategory(name: "Housing"),
                               Subcategory(name: "Hydro"),
                               Subcategory(name: "Tenant Insurance"),
                               Subcategory(name: "Laundry"),
                               Subcategory(name: "Internet"),
                               Subcategory(name: "Cell Phone"),
                               Subcategory(name: "Car Insurance")]
                               
let subscriptionSubcat      = [Subcategory(name: "iCloud"),
                               Subcategory(name: "Spotify"),
                               Subcategory(name: "Amazon")]
                               
let monthlyExpeseSubcat     = [Subcategory(name: "Food"),
                               Subcategory(name: "Take-out"),
                               Subcategory(name: "Substances"),
                               Subcategory(name: "Haircut"),
                               Subcategory(name: "Gas"),
                               Subcategory(name: "Parking"),
                               Subcategory(name: "Clothes"),
                               Subcategory(name: "Entertainment"),
                               Subcategory(name: "Gym"),
                               Subcategory(name: "Bank Fees"),
                               Subcategory(name: "Line of Credit")]

struct MockData {
    
    let categories = [Category(name: "Income",
                               subcategories: incomeSubcat,
                               color: Color.green),
                      
                      Category(name: "Unusual Expenses",
                               subcategories: surpriseExpenseSubcat,
                               color: Color.red),
                      
                      Category(name: "Recurring Expenses",
                               subcategories: surpriseExpenseSubcat,
                               color: Color.blue),
                      
                      Category(name: "Subscriptions",
                               subcategories: subscriptionSubcat,
                               color: Color.yellow),
                      
                      Category(name: "Monthly Expenses",
                               subcategories: monthlyExpeseSubcat,
                               color: Color.pink)]
}
