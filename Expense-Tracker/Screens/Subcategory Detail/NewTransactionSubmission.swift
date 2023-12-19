//
//  NewTransactionSubmission.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-19.
//

import SwiftUI

struct NewTransactionSubmission: View {
    
    @Binding var transactionLabel: String
    @Binding var amount: Double?
    
    var body: some View {
        
        VStack {
            
            TextField("$0.00",
                      value: $amount,
                      format: .currency(code: "CAD")
            )
            .keyboardType(.numberPad)
            .multilineTextAlignment(.center)
            .font(.largeTitle)
            .fontWidth(.expanded)
            .fontWeight(.black)
            .padding(.bottom, 20)

            
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
            .padding(.top, 60)
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
    }
}

#Preview {
    NewTransactionSubmission(transactionLabel: .constant("Food"), amount: .constant(nil))
}
