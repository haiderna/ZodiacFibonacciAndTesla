//
//  NumberReductionView.swift
//  ZodiacFibonacciAndTesla
//
//  Created by Najia Haider on 6/14/23.
//

import Foundation
import SwiftUI

// Built with ChatGPT 
struct NumberReductionView: View {
    var body: some View {
        VStack {
            Text("Number Reduction")
                .font(.title)
                .padding()
            
            VStack {
                EquationView(text: "9 = 9")
                
                EquationView(text: "13 = 1 + 3 = 4")
                
                EquationView(text: "27 = 2 + 7 = 9")
                
                EquationView(text: "89 = 8 + 9 = 17 = 1 + 7 = 8")
            }
            NavigationLink(destination: Tesla124875View()) {
                Text("Next")
            }
        }
    }
}

struct EquationView: View {
    var text: String
    
    var body: some View {
        VStack {
            Text(text)
                .padding()
                .background(Color.white)
                .border(Color.black, width: 1)
        }
        .padding(.bottom, 8)
    }
}

struct NumberReductionView_Previews: PreviewProvider {
    static var previews: some View {
        NumberReductionView()
    }
}
