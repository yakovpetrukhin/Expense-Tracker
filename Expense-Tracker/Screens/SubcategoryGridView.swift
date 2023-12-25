//
//  SubcategoryGridView.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-11.
//

import SwiftUI

struct SubcategoryGridView: View {
    
    @State var categoryList: [Category]
    
    let columns  = Array(repeating: GridItem(.flexible(), spacing: 20, alignment: .center), count: 2)
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(categoryList) { category in
                        ForEach(category.subcategories) { subcategory in
                            SubcategoryGridCell(subcategory: subcategory)
                        }
                    }
                }
                .padding(20)
            }
        }
    }
}

#Preview {
    SubcategoryGridView(categoryList: defaultUser.categories)
}
