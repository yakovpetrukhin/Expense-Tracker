//
//  Category.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-11.
//

import SwiftUI

class Category: Identifiable {
    
    let id: UUID
    
    var label: String
    var color: Color
    
    var subcategories: [Subcategory] = []
    
    init(id: UUID = UUID(), categoryLabel: String, subcategoryLabels: [String], categoryColor: Color) {
        self.id = id
        self.label = categoryLabel
        self.color = categoryColor
        
        for subcategoryLabel in subcategoryLabels {
            self.subcategories.append(Subcategory(label: subcategoryLabel, color: self.color))
        }
        
        
    }
    
    func printDetails() {
        print("ID: \(self.id),\nLabel: \(self.label),\nColor: \(self.color.description)")
    }
}

//    let transactions = [TransactionItem(label: "Walmart",       amount: 99.99),
//                        TransactionItem(label: "Winners",       amount: 99.99),
//                        TransactionItem(label: "Costco Gas",    amount: 99.99),
//                        TransactionItem(label: "Chipotle",      amount: 99.99),
//                        TransactionItem(label: "Canadian Tire", amount: 99.99),
//                        TransactionItem(label: "Walmart",       amount: 99.99),
//                        TransactionItem(label: "Winners",       amount: 99.99),
//                        TransactionItem(label: "Costco Gas",    amount: 99.99),
//                        TransactionItem(label: "Chipotle",      amount: 99.99),
//                        TransactionItem(label: "Canadian Tire", amount: 99.99)]
//    
//    
//}
