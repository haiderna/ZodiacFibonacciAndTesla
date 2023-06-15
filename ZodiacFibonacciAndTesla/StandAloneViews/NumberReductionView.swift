//
//  NumberReductionView.swift
//  ZodiacFibonacciAndTesla
//
//  Created by Najia Haider on 6/14/23.
//

import Foundation
import SwiftUI

//import SwiftUI
//
//@main
//struct YourAppName: App {
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
//}
//
//struct ContentView: View {
//    var body: some View {
//        TabView {
//            FirstView()
//                .tabItem {
//                    Label("First", systemImage: "1.square.fill")
//                }
//
//            SecondView()
//                .tabItem {
//                    Label("Second", systemImage: "2.square.fill")
//                }
//
//            ThirdView()
//                .tabItem {
//                    Label("Third", systemImage: "3.square.fill")
//                }
//        }
//    }
//}
//
//struct FirstView: View {
//    var body: some View {
//        Text("First View")
//            .font(.title)
//            .padding()
//    }
//}
//
//struct SecondView: View {
//    var body: some View {
//        Text("Second View")
//            .font(.title)
//            .padding()
//    }
//}
//
//struct ThirdView: View {
//    var body: some View {
//        Text("Third View")
//            .font(.title)
//            .padding()
//    }
//}


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
