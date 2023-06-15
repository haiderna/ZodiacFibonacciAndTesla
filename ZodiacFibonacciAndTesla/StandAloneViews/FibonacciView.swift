//
//  FibonacciView.swift
//  ZodiacFibonacciAndTesla
//
//  Created by Najia Haider on 6/14/23.
//

import Foundation
import SwiftUI

// built with ChatGPT 
struct FibonacciView: View {
    let fibonacciNumbers: [Int] = [0, 1, 1, 2, 3, 5, 8, 13]
        
        var body: some View {
            VStack {
                Text("Fibonacci")
                    .font(.title)
                    .padding()
                
                HStack {
                    VStack {
                        ForEach(fibonacciNumbers, id: \.self) { number in
                            Text("\(number)")
                                .padding(.bottom, 8)
                        }
                    }
                    
                    VStack {
                        Text("")
                            .padding(.bottom, 8)
                        
                        ForEach(0..<fibonacciNumbers.count) { index in
                            if index == 0 || index == 1 {
                                Text("")
                                    .padding(.bottom, 8)
                            } else {
                                Text("\(fibonacciNumbers[index-1]) + \(fibonacciNumbers[index-2])")
                                    .padding(.bottom, 8)
                            }
                        }
                    }
                }
            }
        }
}
