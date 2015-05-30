//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

class Shape: UIView {
    var color: UIColor
    init(color: UIColor) {
        self.color = color
        super.init(frame: CGRectZero)
        self.backgroundColor = color
    }
    func getArea() -> Double {
        return 0
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class Rectangle: Shape {
    var width: Int
    var height: Int
    init(width: Int, height: Int, color: UIColor) {
        self.width = width
        self.height = height
        super.init(color: color)
        self.frame.size = CGSize(width: width, height: height)
        
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func getArea() -> Double {
        return(Double(width * height))
    }
}

class Square: Shape {
    var width: Int
    init(width: Int, color: UIColor) {
        self.width = width
        super.init(color: color)
        self.frame.size = CGSize(width: width, height: width)

    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func getArea() -> Double {
        return(Double(width * width))
    }
}

class Circle: Shape {
    var radius: Int
    init(radius: Int, color: UIColor) {
        self.radius = radius
        super.init(color: color)
        self.frame.size = CGSize(width: radius * 2, height: radius * 2)
        self.layer.cornerRadius = CGFloat(radius)
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func getArea() -> Double {
        return(M_PI * Double(radius * radius))

}
}

var rectangle = Rectangle(width: 100, height: 50, color: UIColor.orangeColor())
    rectangle.center = CGPoint(x: 200, y: 200)
    rectangle.getArea()

var square = Square(width: 100, color: UIColor.redColor())
square.center = CGPoint(x: 200, y: 200)
square.getArea()

var circle = Circle(radius: 50, color: UIColor.blueColor())
circle.center = CGPoint(x: 100, y: 100)
circle.getArea()

let view = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 320))
XCPShowView("Shapes!", view)

view.addSubview(circle)
view.addSubview(square)
view.addSubview(rectangle)


