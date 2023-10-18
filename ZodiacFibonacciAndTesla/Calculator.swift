//
//  Calculator.swift
//  ZodiacFibonacciAndTesla
//
//  Created by Najia Haider on 9/4/23.
//

import Foundation

class Calculator {
    
    static let shared: Calculator = Calculator()
    
    func numberReduction(n: Int) -> Int {
        var num = n
        
        while num >= 10 {
            var digits = String(num)
            var digitsArray = Array(digits)
            num = 0
            
            for each in digitsArray {
                var added = each.wholeNumberValue!
                num += added
            }
        }
        
        return num
    }
    
    func fibonacci(n: Int) -> [Int] {
        var array = [Int]()
        array.append(0)
        array.append(1)
        
        for i in 2 ... n {
            var val = array[i - 2] + array[i - 1]
            array.append(val)
        }
        
        return array
    }
}
