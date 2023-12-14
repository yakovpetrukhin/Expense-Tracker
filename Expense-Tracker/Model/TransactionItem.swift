//
//  TransactionItem.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-12.
//

import SwiftUI

struct TransactionItem: Identifiable {
    let id = UUID()
    
    var label: String
    var amount: Double
    var date: Date?
    
    var categoryLabel: String? // FIX THIS, THEY ARE OPTIONAL JUST FOR TESTING THE LIST VIEW
    var subcategoryLabel: String?
    var transactionType: TransactionType = .expense
}

enum TransactionType {
    case expense
    case income
}
