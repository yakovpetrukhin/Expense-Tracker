//
//  Subcategory.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-12.
//

import SwiftUI

struct Subcategory: Identifiable {
    let id = UUID()
    
    var name: String
    var transactions: [TransactionItem] = []
    
    var amount: Double = 0.0
    var color: Color?
}
