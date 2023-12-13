//
//  TransactionItem.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-12.
//

import SwiftUI

struct TransactionItem: Identifiable {
    let id = UUID()
    var description: String
    var amount: Double
    var transactionType: TransactionType
}

enum TransactionType {
    case expense
    case income
}
