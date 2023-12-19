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
        
        NewTransactionSubmission(transactionLabel: $transactionLabel, amount: $amount)
            .padding(.vertical, 90)
        
        SubcategoryTransactionList()
        
    }
}

#Preview {
    SubcategoryDetailView(subcategory: MockData().categories[0].subcategories[0])
}
