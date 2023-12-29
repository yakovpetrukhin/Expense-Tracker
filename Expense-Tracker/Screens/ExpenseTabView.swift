//
//  ExpenseTabView.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-27.
//

import SwiftUI

struct ExpenseTabView: View {
    
    var user: UserData
    
    var body: some View {
        TabView {
            SubcategoryGridView(categoryList: user.categories)
                .tabItem {
                    Label("Categories", systemImage: "square.stack.fill")
                }
            TransactionListView()
                .tabItem {
                    Label("Transactions", systemImage: "list.bullet")
                }
            FinancialOverviewView()
                .tabItem {
                    Label("Financial Insights", systemImage: "chart.line.uptrend.xyaxis")
                }
            ProfileSettingsView()
                .tabItem {
                    Label("Setttings", systemImage: "gear")
                }
            
        }
    }
}

#Preview {
    ExpenseTabView(user: defaultUser)
}
