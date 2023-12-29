//
//  TransactionItem.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-12.
//

import SwiftUI

@Observable final class TransactionItem: Identifiable, Codable, Hashable {
    
    @ObservationIgnored let id: UUID
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
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: TransactionItem, rhs: TransactionItem) -> Bool {
        if rhs.id == lhs.id {
            return true
        }
        return false
    }
}

enum TransactionType: String, Codable {
    case expense, income
}
