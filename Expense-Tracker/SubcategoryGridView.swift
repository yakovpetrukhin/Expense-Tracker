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
        NavigationView(content: {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ExpenseCategoryCell(color: .blue, subcategory: "category", amountSpent: 10)
                    ExpenseCategoryCell(color: .blue, subcategory: "category", amountSpent: 10)
                    ExpenseCategoryCell(color: .blue, subcategory: "category", amountSpent: 10)
                    ExpenseCategoryCell(color: .blue, subcategory: "category", amountSpent: 10)
                    ExpenseCategoryCell(color: .blue, subcategory: "category", amountSpent: 10)
                    ExpenseCategoryCell(color: .blue, subcategory: "category", amountSpent: 10)
                    ExpenseCategoryCell(color: .blue, subcategory: "category", amountSpent: 10)
                    ExpenseCategoryCell(color: .blue, subcategory: "category", amountSpent: 10)
                    ExpenseCategoryCell(color: .blue, subcategory: "category", amountSpent: 10)
                    ExpenseCategoryCell(color: .blue, subcategory: "category", amountSpent: 10)
                    ExpenseCategoryCell(color: .blue, subcategory: "category", amountSpent: 10)
                    ExpenseCategoryCell(color: .blue, subcategory: "category", amountSpent: 10)
                    ExpenseCategoryCell(color: .blue, subcategory: "category", amountSpent: 10)
                    ExpenseCategoryCell(color: .blue, subcategory: "category", amountSpent: 10)
                    ExpenseCategoryCell(color: .blue, subcategory: "category", amountSpent: 10)
                }
                .padding(20)
            }
//            NavigationLink(destination: Text("Destination")) { /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/ }
        })
    }
}

#Preview {
    SubcategoryGridView()
}
