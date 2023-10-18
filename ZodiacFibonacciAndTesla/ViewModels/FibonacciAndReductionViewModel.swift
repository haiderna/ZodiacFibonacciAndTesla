//
//  FibonacciAndReductionViewModel.swift
//  ZodiacFibonacciAndTesla
//
//  Created by Najia Haider on 9/6/23.
//

import Foundation

class FibonacciAndReductionViewModel: ObservableObject {
    @Published var array = [Int]()
    
    func populateArray() {
        var populate = Calculator.shared.fibonacci(n: 37)
        array = populate
    }
}
