//
//  UserData.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-21.
//

import SwiftUI
import Observation

@Observable class UserData {
    
    // User data is initialized with categories that are provided in a Category: [Subcategory] dictionary.
    // When the app opens for the first time a UserData instance is created and initialized with the DefaultData values
    
    var categories: [Category] = []
    
    
    // This initializer takes a key value pair of categories (key) and subcategories (value), and a color that is applied
    // to the dictionary. It is designed to be used to load the DefaultData when no user exists
    
    init(categoryDict: KeyValuePairs<String, [String]>, colors: [Color]) {
        
        // I think this initializer can be a bit more elegant review later
        
        var categoryLabel: String
        var subcategoryLabels: [String]
        var categoryColor: Color
        
        for (categoryBranchLabels, color) in zip(categoryDict, colors) {
            
            categoryLabel = categoryBranchLabels.key
            subcategoryLabels = categoryBranchLabels.value
            categoryColor = color
            
            self.categories.append(Category(categoryLabel: categoryLabel,
                                       subcategoryLabels: subcategoryLabels,
                                       categoryColor: categoryColor))

        }
    }
}
