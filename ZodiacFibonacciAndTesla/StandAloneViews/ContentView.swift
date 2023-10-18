//
//  ContentView.swift
//  ZodiacFibonacciAndTesla
//
//  Created by Najia Haider on 6/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TutorialViewStartView()
                .tabItem {
                    Label("Tutorial", systemImage: "1.square.fill")
                }
                .tag(1)
            
            ZodiacTeslaFibComboView()
                .tabItem {
                    Label("Num Reduce", systemImage: "2.square.fill")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
