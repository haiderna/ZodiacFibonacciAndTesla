//
//  Tesla124875View.swift
//  ZodiacFibonacciAndTesla
//
//  Created by Najia Haider on 6/16/23.
//

import Foundation
import SwiftUI

struct Tesla124875View: View {
    @ObservedObject var viewModel = TeslaViewModel()
    let numbers = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048]
  
    
    var body: some View {
        ZStack {
            VStack(alignment: .trailing) {
                Text("Always")
                    .foregroundColor(.red)
                Text("1")
                    .foregroundColor(.red)
                Text("2")
                    .foregroundColor(.red)
                Text("4")
                    .foregroundColor(.red)
                Text("8")
                    .foregroundColor(.red)
                Text("7")
                    .foregroundColor(.red)
                Text("5")
                    .foregroundColor(.red)
                NavigationLink(destination: Tesla369View()) {
                    Text("Next")
                }
                
            }
            .padding(.leading, 200)
            VStack(alignment: .leading) {
                Text("Tesla Theory 1, 2, 4, 8, 7, 5").font(.title2)
                    .padding(.bottom, 10)
                ForEach(0..<numbers.count, id: \.self) { index in
                    Text(viewModel.stringReduction(numbers[index]))
                }
            }
        }
       
    }
}

struct FibonacciAndTesla: View {
    var body: some View {
        HStack {
            
        }
    }
}


