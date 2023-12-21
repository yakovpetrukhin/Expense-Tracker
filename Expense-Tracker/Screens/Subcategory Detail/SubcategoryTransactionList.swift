//
//  SubcategoryTransactionList.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-19.
//

import SwiftUI

struct SubcategoryTransactionList: View {
    
    @State var transactions: [TransactionItem] = MockData().transactions
    
    var body: some View {
        Text("Transactions")
            .font(.title)
            .fontWeight(.semibold)
        List {
            ForEach(transactions) { transactionItem in
                TransactionListCell(transaction: transactionItem)
            }
            .onDelete(perform: { indexSet in
                for index in indexSet {
                    transactions.remove(at: index)
                }
            })
        }
        .listStyle(.plain)
        .listRowSeparator(.hidden)

    }
}

#Preview {
    SubcategoryTransactionList()
}
