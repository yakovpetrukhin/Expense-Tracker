//
//  TransactionItem.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-12.
//

import SwiftUI

class TransactionItem: Identifiable, Codable {
    
    let id: UUID
    var label: String
    var amount: Double
    var date: Date
    var transactionType: TransactionType = .expense
    
    init(id: UUID = UUID(), label: String, amount: Double, date: Date = Date.now,
         transactionType: TransactionType = .expense) {
        
        self.id = id
        self.label = label
        self.amount = amount
        self.date = date
        self.transactionType = transactionType
    }
}

enum TransactionType: String, Codable {
    case expense, income
}
