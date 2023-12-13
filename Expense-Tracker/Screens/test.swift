//
//  test.swift
//  Expense-Tracker
//
//  Created by Yakov Petrukhin on 2023-12-13.
//

import SwiftUI

import SwiftUI

struct ContentView: View {

    @State private var value = 0.0
  private let numberFormatter: NumberFormatter
    
    init() {
      numberFormatter = NumberFormatter()
      numberFormatter.numberStyle = .currency
      numberFormatter.maximumFractionDigits = 2
    }

    var body: some View {
        VStack() {

            TextField("$0.00", value: $value, formatter: numberFormatter)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.trailing)
                .keyboardType(.numberPad)
        }
    }
}

#Preview {
    ContentView()
}
    
