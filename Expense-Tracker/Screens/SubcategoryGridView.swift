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
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(MockData().categories) { category in
                        ForEach(category.subcategories) { subcategory in
                            ExpenseCategoryCell(color: category.color, subcategoryName: subcategory.name, amount: 0.0)
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
