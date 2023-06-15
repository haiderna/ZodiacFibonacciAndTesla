//
//  ZodiacTeslaFibComboView.swift
//  ZodiacFibonacciAndTesla
//
//  Created by Najia Haider on 6/15/23.
//

import Foundation
import SwiftUI

// mix of my own playing around with code and Chat GPT 
struct ZodiacTeslaFibComboView: View {
    var fib = [1, 1, 2, 3, 5, 8, 4, 3, 7, 1, 8, 9]
    var body: some View {
        ZStack {
            ForEach(0..<12) { index in
                ZStack {
                    OneTwelfthCircle()
                        .stroke(Color.black, lineWidth: 2)
                        .frame(width: 300, height: 300)
                        .overlay(
                            Text("\(fib[index]) (\(9 - fib[index]))")
                                .font(.system(size: 18))
                                .foregroundColor(.black)
                                .rotationEffect(.degrees(Double(index) * -30 + 75))
                                .offset(x: 100, y: 20) // Updated offset values
                        )
                }
                .rotationEffect(.degrees(Double(index) * 30))
            }
            CircleView()
                .frame(width: 300, height: 300)
            CustomTriangle()
                .stroke(Color.red, lineWidth: 2)
                .frame(width: 275, height: 220)
                .offset(x: 0, y: -40)
                .rotationEffect(.degrees(Double(75)))
            TeslaView()
                .rotationEffect(.degrees(Double(75)))
        }
        .rotationEffect(.degrees(Double(-75)))
    }
}

struct CircleView: View {
    var body: some View {
        Circle()
            .stroke(Color.black, lineWidth: 2)
            .background(Color.clear)
    }
}


struct TeslaView: View {
    var body: some View {
            HStack(spacing: 0) {
                RhombusShape()
                    .stroke(Color.blue, lineWidth: 2)
                RhombusShape()
                    .stroke(Color.blue, lineWidth: 2)
            }
            .frame(width: 300, height: 280)
    }
    
}
