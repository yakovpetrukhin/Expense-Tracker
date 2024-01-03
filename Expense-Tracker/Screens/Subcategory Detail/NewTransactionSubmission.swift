//
//  NewTransactionSubmission.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-19.
//

import SwiftUI

struct NewTransactionSubmission: View {
    
    @Bindable var subcategory: Subcategory
    
    @State var label: String = ""
    @State var amount: Double?
    
    enum FocusedField {
        case amount, label
    }
    
    @FocusState private var focusedField: FocusedField?
    
    var body: some View {
        
        VStack {
            
            TextField("$0.00",
                      value: $amount,
                      format: .currency(code: "CAD")
                      
            )
                .onSubmit {
                    print(amount!)
                }
                .keyboardType(.decimalPad)
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                .fontWidth(.expanded)
                .fontWeight(.black)
                .padding(.bottom, 20)
                .focused($focusedField, equals: .amount)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()

                        Button {
                            focusedField = .label
                        } label : {
                            Text("Next")
                        }
                    }
                }

            
            TextField("New Transaction", text: $label)
                .font(.title)
                .multilineTextAlignment(.center)
                .focused($focusedField, equals: .label)

            
            Button {
                if amount != nil && label != "" {
                    subcategory.transactions.insert(TransactionItem(label: label, amount: amount!), at: 0)
                }
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
    NewTransactionSubmission(subcategory: defaultUser.categories[0].subcategories[0])
}
