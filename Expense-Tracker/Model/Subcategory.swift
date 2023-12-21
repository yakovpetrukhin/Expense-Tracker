//
//  Subcategory.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-12.
//

import SwiftUI

class Subcategory: Identifiable {
    let id = UUID()
    
    var name: String
    var transactions: [TransactionItem]
    
    var amount: Double
    var color: Color?
    
    init(name: String, transactions: [TransactionItem] = [], amount: Double = 0.0, color: Color? = nil) {
        self.name = name
        self.transactions = transactions
        self.amount = amount
        self.color = color
    }
}
