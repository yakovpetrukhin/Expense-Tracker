//
//  ExpenseCategoryCell.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-11.
//

import SwiftUI

struct ExpenseCategoryCell: View {
    var color: Color
    var subcategory: String
    var amountSpent: Double
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(color)
                
            
            VStack {
                Text(subcategory)
                    .font(.title2)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .padding([.horizontal, .top], 10)
                    .frame(height: 80)
                
                Spacer()
                
                Text("$\(amountSpent, specifier: "%.2f")")
                    .font(.headline)
                    .padding(.bottom, 15)
            }
        }
        .frame(maxWidth: .infinity, minHeight: 100)
        
    }
}

#Preview {
    ExpenseCategoryCell(color: .brown,
                        subcategory: "Take-Out, lots of food",
                        amountSpent: 99.12)
}
