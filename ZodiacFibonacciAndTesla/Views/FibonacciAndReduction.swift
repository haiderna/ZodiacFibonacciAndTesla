//
//  FibonacciAndReduction.swift
//  ZodiacFibonacciAndTesla
//
//  Created by Najia Haider on 9/6/23.
//

import Foundation
import SwiftUI

struct FibonacciAndReduction: View {
    @State var viewModel: FibonacciAndReductionViewModel
    
    init(viewModel: FibonacciAndReductionViewModel = FibonacciAndReductionViewModel()) {
        self.viewModel = viewModel
        viewModel.populateArray()
    }
   
    @State var fibonacci = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]
        
        var body: some View {
            VStack {
                Text("Fibonacci Numbers and Reduction")
                    .font(.title2)
                    .padding(.bottom, 5)
                ForEach(0..<fibonacci.count) { index in
                    HStack(spacing: 20) {
                        Text("\(fibonacci[index])")
                        Text("=")
                        Text("\(Calculator.shared.numberReduction(n: fibonacci[index]))")
                    }
                }
                HStack {
                    Button("1 - 12") {
                        self.fibonacci = Array(viewModel.array[1 ... 12])
                    }
                    
                    Button("12 - 24") {
                        self.fibonacci = Array(viewModel.array[13 ... 24])
                    }
                    
                    Button("24 - 36") {
                        self.fibonacci = Array(viewModel.array[25 ... 36])
                    }
                    
                }
                Text("Every 12th number reduces to 9, every 3rd and 6th number reduces to 3 or 6")
                NavigationLink(destination: ZodiacSigns()) {
                    Text("Next")
                }
            }
        }
}
