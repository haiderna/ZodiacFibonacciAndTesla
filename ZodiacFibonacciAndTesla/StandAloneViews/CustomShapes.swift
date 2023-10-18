//
//  CustomShapes.swift
//  ZodiacFibonacciAndTesla
//
//  Created by Najia Haider on 6/12/23.
//

import Foundation
import SwiftUI

// Built in ChatGPT
struct RhombusShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let width = rect.width
        let height = rect.height
        
        let startPoint = CGPoint(x: width / 2, y: 0)
        let topRightPoint = CGPoint(x: width, y: height / 2)
        let bottomPoint = CGPoint(x: width / 2, y: height)
        let bottomLeftPoint = CGPoint(x: 0, y: height / 2)
        
        path.move(to: startPoint)
        path.addLine(to: topRightPoint)
        path.addLine(to: bottomPoint)
        path.addLine(to: bottomLeftPoint)
        path.closeSubpath()
        
        return path
    }
}

// Built with Chat GPT
struct OneTwelfthCircle: Shape {
    func path(in rect: CGRect) -> Path {
        let startAngle: Angle = .degrees(0)
        let endAngle: Angle = .degrees(30) // 360 degrees divided by 12
        var path = Path()
        path.addArc(center: rect.center, radius: rect.width / 2, startAngle: startAngle, endAngle: endAngle, clockwise: false)
        path.addLine(to: rect.center)
        path.closeSubpath()
        return path
    }
}

//CHatGPT 
struct IsoscelesTriangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

struct CustomTriangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

extension CGRect {
    var center: CGPoint {
        CGPoint(x: midX, y: midY)
    }
}
