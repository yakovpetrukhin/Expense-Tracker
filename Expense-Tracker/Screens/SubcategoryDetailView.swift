//
//  SubcategoryDetailView.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-13.
//

import SwiftUI

struct SubcategoryDetailView: View {
    @State var data: [Double] = []
    let subcategory: Subcategory
    
    @State var transactionLabel: String = ""
    @State var amount: Double? = nil
      
    var body: some View {
        Spacer()
        VStack {
            
            
            TextField("$0.00",
                      value: $amount,
                      format: .currency(code: "CAD"))
                .keyboardType(.numberPad)
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                .fontWidth(.expanded)
                .fontWeight(.black)
                .frame(width: .infinity, 
                       height: 100,
                       alignment: .center)
            
            TextField("New Transaction", text: $transactionLabel)
                .font(.title)
                .multilineTextAlignment(.center)
            
            Button {
                print("Submitted new transaction")
            } label: {
                Label("Submit", systemImage: "checkmark")
                    .font(.title3)
                    .frame(width: 240, height: 50)
                    .fontWeight(.bold)
            }
            .padding(.vertical, 40)
            .buttonStyle(.borderedProminent)
            .tint(.green)
            
        }
        .offset(CGSize(width: 0.0, height: 60.0))
        Spacer()
        List {
            ForEach(MockData().transactions/*subcategory.transactions*/) { transactionItem in
                TransactionListCell(transaction: transactionItem)
            }
        }
        .listStyle(.plain)
        .listRowSeparator(.hidden)
        .frame(height: 260)
        
    }
}

#Preview {
    SubcategoryDetailView(subcategory: MockData().categories[0].subcategories[0])
}
