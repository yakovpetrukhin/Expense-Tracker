//
//  DefaultData.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-21.
//

import SwiftUI

struct DefaultData {
    
    let categoryNames: [String] =       ["Income",
                                         "Surprise Expense",
                                         "Monthly Expense",
                                         "Recurring Expense",
                                         "Subscription"]
    
    let categoryColors: [Color] =       [.green,
                                         .red,
                                         .blue,
                                         .yellow,
                                         .pink]
    
    let subcategoryNames: [[String]] =  [["Work", "Savings", "Side Income"],
                                        
                                         ["Supplies", "Gifts", "Travel", "Medical", "Car Maintenance"],
                                         
                                         ["Housing", "Hydro", "Tenant Insurance", "Laundry", "Internet",
                                          "Cell Phone","Car Insurance"],
                                        
                                         ["iCloud", "Spotify", "Amazon"],
                                        
                                         ["Take-out", "Substances", "Haircut", "Gas", "Parking", "Clothes",
                                          "Entertainment", "Gym", "Bank Fees", "Line of Credit"]]
                                  
}
