//
//  ZodiacSigns.swift
//  ZodiacFibonacciAndTesla
//
//  Created by Najia Haider on 9/7/23.
//

import SwiftUI

struct ZodiacSigns: View {
    let signs = ["Aries", "Taurus", "Gemini", "Cancer", "Leo", "Virgo", "Libra", "Scorpio", "Sagittarius", "Capricorn", "Aquarius", "Pisces"]
    let fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]
    let reduction = [1, 1, 2, 3, 5, 8, 4, 3, 7, 1, 8, 9]
    
    var body: some View {
        VStack {
            Text("Zodiac Signs and Their Corresponding Numbers")
                .font(.title)
                .padding()
            ForEach(Array(signs.enumerated()), id: \.1) { (index, sign) in
                Text("Sign: \(sign), Fib: \(fibs[index]), Reduced: \(reduction[index])")
                    .foregroundColor( index == 3 || index == 7 || index == 11 ? .red : .black)
            }
        }
        
      }
}

struct ZodiacSigns_Previews: PreviewProvider {
    static var previews: some View {
        ZodiacSigns()
    }
}
