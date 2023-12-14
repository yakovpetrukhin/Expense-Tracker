//
//  TransactionListView.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-14.
//

import SwiftUI

struct TransactionListCell: View {
    
    let transaction: TransactionItem
    
    var body: some View {
        HStack {
            Text(transaction.label)
                .fontWeight(.bold)
                .font(.title2)
                .padding()
            Spacer()
            Text("$\(transaction.amount, specifier: "%.2f")")
                .font(.headline)
                .padding()
        }
        .frame(width: .infinity, height: 60)
        .background(.mint)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}

#Preview {
    TransactionListCell(transaction: MockData().transactions[0])
}
