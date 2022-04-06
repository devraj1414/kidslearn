//
//  Benzpath.swift
//  KidsLearning
//
//  Created by Suruchi Kumari on 4/4/22.
//

import UIKit


extension UIBezierPath{
   
    
    
    static var logo1 : UIBezierPath{
        let  shape = UIBezierPath()
         shape.move(to: CGPoint(x: 50, y: 50))
        shape.addLine(to: CGPoint(x: 200, y: 50))
        shape.addLine(to: CGPoint(x: 200, y: 250))
        shape.addLine(to: CGPoint(x: 50, y: 250))
        shape.addLine(to: CGPoint(x: 50, y: 50))
        return  shape
    }
    
    
    static var logo2 : UIBezierPath{
        let shape = UIBezierPath()
        shape.move(to: CGPoint(x: 10, y: 6))
        shape.addLine(to: CGPoint(x: 10, y: 0))
        shape.addLine(to: CGPoint(x: 6, y: 0))
        shape.addLine(to: CGPoint(x: 6, y: 6))
        shape.addLine(to: CGPoint(x: 0, y: 6))
        shape.addLine(to: CGPoint(x: 0, y: 10))
        shape.addLine(to: CGPoint(x: 6, y: 10))
        shape.addLine(to: CGPoint(x: 6, y: 16))
        shape.addLine(to: CGPoint(x: 10, y: 16))
        shape.addLine(to: CGPoint(x: 10, y: 10))
        shape.addLine(to: CGPoint(x: 16, y: 10))
        shape.addLine(to: CGPoint(x: 16, y: 6))
        shape.addLine(to: CGPoint(x: 10, y: 6))
        shape.close()
        return shape
    }
}


extension UIBezierPath {
    static func calcBounds(paths : [UIBezierPath]) -> CGRect{
            let myPath = UIBezierPath()
        for path in paths{
            myPath.append(path)
        }
        return (myPath.bounds)
    }
}
