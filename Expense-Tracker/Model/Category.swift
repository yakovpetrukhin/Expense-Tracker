//
//  Category.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-11.
//

import SwiftUI

@Observable final class Category: Identifiable {
    
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
