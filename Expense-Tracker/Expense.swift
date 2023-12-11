//
//  Expense.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-11.
//

import SwiftUI

struct transaction: Hashable, Identifiable {
    let id = UUID()
    let category: String
    let subcategory: String
    let amount: Double
    let transactionLabel: String?
}


