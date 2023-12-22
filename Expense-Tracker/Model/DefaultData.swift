//
//  DefaultData.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-21.
//

import SwiftUI

struct DefaultData {
    
    let categoryTree: [String: [String]] =  ["Income":
                                                ["Work", "Savings", "Side Income"],
                                             
                                             "Surprise Expense":
                                                ["Supplies", "Gifts", "Travel","Medical", "Car Maintenance"],
                                             
                                             "Monthly Expense":
                                                ["Housing", "Hydro", "Tenant Insurance","Laundry", "Internet",
                                                 "Cell Phone","Car Insurance"],
                                             
                                             "Recurring Expense":
                                                ["Take-out", "Substances", "Haircut", "Gas", "Parking",
                                                 "Clothes", "Entertainment", "Gym", "Bank Fees", "Line of Credit"],
                                             
                                             "Subscription":
                                                ["iCloud", "Spotify", "Amazon"]]
    
    let categoryColors: [Color] =           [.green,
                                             .red,
                                             .blue,
                                             .yellow,
                                             .pink]
        

}

