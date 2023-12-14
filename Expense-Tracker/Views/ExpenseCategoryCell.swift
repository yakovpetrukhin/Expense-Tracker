//
//  ExpenseCategoryCell.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-11.
//

import SwiftUI

struct ExpenseCategoryCell: View {
    var color: Color
    var subcategoryName: String
    var amount: Double
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(color)
                
            
            VStack {
                Text(subcategoryName)
                    .font(.title2)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .padding([.horizontal, .top], 10)
                    .frame(height: 80)
                
                Spacer()
                
                Text("$\(amount, specifier: "%.2f")")
                    .font(.headline)
                    .padding(.bottom, 15)
            }
        }
        .frame(maxWidth: .infinity, minHeight: 100)
        
    }
}

#Preview {
    ExpenseCategoryCell(color: .brown,
                        subcategoryName: "Take-Out, lots of food",
                        amount: 99.12).frame(width: 150, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
}
