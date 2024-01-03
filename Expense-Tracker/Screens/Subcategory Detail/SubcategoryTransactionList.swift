//
//  SubcategoryTransactionList.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-19.
//

import SwiftUI

struct SubcategoryTransactionList: View {
    
    @State var subcategory: Subcategory
    
    var body: some View {
        VStack {
            Text("Transactions")
                .font(.title)
                .fontWeight(.semibold)
            List {
                ForEach(subcategory.transactions) { transactionItem in
                    TransactionListCell(transaction: transactionItem)
                }
                .onDelete(perform: { indexSet in
                    for index in indexSet {
                        subcategory.transactions.remove(at: index)
                    }
                })
            }
            .listStyle(.plain)
            .listRowSeparator(.hidden)
        }
    }
}

#Preview {
    SubcategoryTransactionList(
        subcategory: defaultUser.categories[0].subcategories[0])
}
