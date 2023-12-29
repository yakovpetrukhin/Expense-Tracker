//
//  ExpenseCategoryCell.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-11.
//

import SwiftUI

struct SubcategoryGridCell: View {
    
    let subcategory: Subcategory
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(subcategory.color)
                
            
            VStack {
                Text(subcategory.label)
                    .font(.title2)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .padding([.horizontal, .top], 10)
                    .frame(height: 80)
                
                Spacer()
                
                Text("$\(subcategory.amount, specifier: "%.2f")")
                    .font(.headline)
                    .padding(.bottom, 15)
            }
        }
        .frame(maxWidth: .infinity, minHeight: 100)
        
    }
}

#Preview {
    SubcategoryGridCell(subcategory: defaultUser.categories[0].subcategories[0])
        .frame(width: 200, height: 100)
}
