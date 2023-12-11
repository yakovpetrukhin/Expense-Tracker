//
//  SubcategoryGridView.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-11.
//

import SwiftUI

struct SubcategoryGridView: View {
    let columns  = Array(repeating: GridItem(.flexible(), spacing: 20, alignment: .center), count: 2)
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(MockData().categories) { category in
                        ForEach(category.subcategories, id: \.self) { subcategory in
                            ExpenseCategoryCell(color: category.color, subcategory: subcategory, amountSpent: 0.0)
                        }
                    }
                }
                .padding(20)
            }
        }
    }
}

#Preview {
    SubcategoryGridView()
}
