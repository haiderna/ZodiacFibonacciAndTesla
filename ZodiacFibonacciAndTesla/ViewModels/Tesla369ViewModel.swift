//
//  Tesla369ViewModel.swift
//  ZodiacFibonacciAndTesla
//
//  Created by Najia Haider on 9/6/23.
//

import Foundation

class TeslaViewModel: ObservableObject {
    
    func stringReduction(_ n: Int) -> String {
        var str = "\(n) + \(n) = \(n + n)"
        var num = n + n
        while num >= 10 {
            var digits = String(num)
            var digitsArray = Array(digits)
            num = 0
            var strAdd = "\n\t"
            
            for i in 0 ... digitsArray.count - 1 {
                var added = digitsArray[i].wholeNumberValue!
                num += added
                var strAdded = ""
                if i == digitsArray.count - 1 {
                    strAdd.append(" \(added)")
                } else {
                    strAdd.append(" \(added) +")
                }
            }
            
            strAdd.append(" = \(num)")
            
            str.append(strAdd)
        }
        
        return str
    }
}
