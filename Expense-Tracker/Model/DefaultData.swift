//
//  DefaultData.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-21.
//

import SwiftUI

struct DefaultData {
    
    let categoryTree: KeyValuePairs =  ["Income":
                                                ["Work", "Savings", "Side Income"],
                                             
                                             "Surprise Expense":
                                                ["Supplies", "Gifts", "Travel","Medical", "Car Maintenance"],
                                             
                                             "Monthly Expense":
                                                ["Housing", "Hydro", "Tenant Insurance","Laundry", "Internet",
                                                 "Cell Phone","Car Insurance"],
                                             
                                             "Recurring Expense":
                                                ["Take-out", "Substances", "Haircut", "Gas", "Parking",
                                                 "Clothes", "Entertainment", "Gym", "Bank Fees", "Line of Credit"],
                                             
                                             "Subscription":
                                                ["iCloud", "Spotify", "Amazon"]]
    
    let categoryColors: [Color] =           [.green,
                                             .red,
                                             .blue,
                                             .yellow,
                                             .pink]
    
    
    let transactions = [TransactionItem(label: "Walmart",       amount: 99.99),
                        TransactionItem(label: "Winners",       amount: 99.99),
                        TransactionItem(label: "Costco Gas",    amount: 99.99),
                        TransactionItem(label: "Chipotle",      amount: 99.99),
                        TransactionItem(label: "Canadian Tire", amount: 99.99),
                        TransactionItem(label: "Walmart",       amount: 99.99),
                        TransactionItem(label: "Winners",       amount: 99.99),
                        TransactionItem(label: "Costco Gas",    amount: 99.99),
                        TransactionItem(label: "Chipotle",      amount: 99.99),
                        TransactionItem(label: "Canadian Tire", amount: 99.99)]
}

let defaultUser: UserData = {
    var user = UserData(categoryDict: DefaultData().categoryTree, colors: DefaultData().categoryColors)
    user.categories[0].subcategories[0].transactions = DefaultData().transactions
    return user
}()
