//
//  SubcategoryDetailView.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-13.
//

import SwiftUI

struct SubcategoryDetailView: View {
    
    @State var subcategory: Subcategory

    var body: some View {
        
        NewTransactionSubmission(subcategory: subcategory)
            .padding(.vertical, 40)
        
        SubcategoryTransactionList(subcategory: subcategory)
        
    }
}

#Preview {
    SubcategoryDetailView(subcategory: defaultUser.categories[0].subcategories[0])
}
