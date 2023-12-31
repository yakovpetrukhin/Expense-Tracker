//
//  Subcategory.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-12.
//

import SwiftUI

@Observable final class Subcategory: Identifiable, Hashable {
    
    @ObservationIgnored let id: UUID
    
    var label: String
    var transactions: [TransactionItem] = []
    // This doesn't look clean, but it first creates an array from the doubles property in all transactions
    // Then reduces them to a sum
    var amount: Double { transactions.map(\.amount).reduce(0,+) }
    
    var color: Color
    
    init(id: UUID = UUID(), label: String, transactions: [TransactionItem] = [], color: Color) {
        self.id = id
        self.label = label
        self.transactions = transactions
        self.color = color
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: Subcategory, rhs: Subcategory) -> Bool {
        if rhs.id == lhs.id {
            return true
        }
        return false
    }
}
