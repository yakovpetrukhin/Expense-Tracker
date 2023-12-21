//
//  TransactionItem.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-12.
//

import SwiftUI

class TransactionItem: Identifiable {
    let id = UUID()
    
    var label: String
    var amount: Double
    var date: Date?
    
    var categoryLabel: String? // FIX THIS, THEY ARE OPTIONAL JUST FOR TESTING THE LIST VIEW
    var subcategoryLabel: String?
    var transactionType: TransactionType = .expense
    
    init(label: String, amount: Double, date: Date? = nil, categoryLabel: String? = nil, subcategoryLabel: String? = nil, transactionType: TransactionType = .expense) {
        self.label = label
        self.amount = amount
        self.date = date
        self.categoryLabel = categoryLabel
        self.subcategoryLabel = subcategoryLabel
        self.transactionType = transactionType
    }
}

enum TransactionType {
    case expense
    case income
}
