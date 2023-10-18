//
//  Tesla369View.swift
//  ZodiacFibonacciAndTesla
//
//  Created by Najia Haider on 9/6/23.
//

import Foundation
import SwiftUI

struct Tesla369View: View {
    @ObservedObject var viewModel = TeslaViewModel()
    var numbers = [3, 6, 9, 18, 36, 72]
    
    var body: some View {
        ZStack {
            VStack(alignment: .trailing) {
                Text("Always")
                    .foregroundColor(.red)
                Text("3")
                    .foregroundColor(.red)
                Text("6")
                    .foregroundColor(.red)
                Text("9")
                    .foregroundColor(.red)
            }
            .padding(.leading, 200)
            VStack(alignment: .leading) {
                Text("Tesla Theory 3, 6, 9").font(.title2)
                    .padding(.bottom, 10)
                ForEach(0..<numbers.count, id: \.self) { index in
                    Text(viewModel.stringReduction(numbers[index]))
                }
                NavigationLink(destination: FibonacciAndReduction()) {
                    Text("Next")
                }
            }
        }
       
    }
    
}
