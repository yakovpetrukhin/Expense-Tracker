//
//  SubcategoryTransactionList.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-19.
//

import SwiftUI

struct SubcategoryTransactionList: View {
    
    var body: some View {
        Text("Transactions")
            .font(.title)
            .fontWeight(.semibold)
        List {
            ForEach(MockData().transactions/*subcategory.transactions*/) { transactionItem in
                TransactionListCell(transaction: transactionItem)
            }
        }
        .listStyle(.plain)
        .listRowSeparator(.hidden)
    }
}

#Preview {
    SubcategoryTransactionList()
}
