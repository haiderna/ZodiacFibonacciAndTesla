//
//  TutorialViewStartView.swift
//  ZodiacFibonacciAndTesla
//
//  Created by Najia Haider on 9/4/23.
//

import SwiftUI

struct TutorialViewStartView: View {
    // Flow
    // tab1: tutorial
    // fibonacci ✅ -> number reduction ✅  --> Tesla non 369  ✅ --> Tesla 369  ✅ --> Fibonacci + number reduction = Tesla 3,6,9 (every 12th)  ✅ --> 12 Zodiac Signs align with Fib numbers == 3,6, 9
    // tab2: displaying final product (altogether) 
    var body: some View {
        NavigationView {
            VStack {
                Text("Learn how Fibonacci and Tesla 369 theory can be seen in astrology and the Zodiac Wheel!")
                    .font(.headline)
                NavigationLink(destination: FibonacciView()) {
                    Text("Get Started!")
                }
            }
            .padding()
        }
        .navigationTitle("Tutorial")
        
    }
}

struct TutorialViewStartView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialViewStartView()
    }
}
