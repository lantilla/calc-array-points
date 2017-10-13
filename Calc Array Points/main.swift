//
//  main.swift
//  Calc Array Points
//
//  Created by Lauren Antilla on 10/12/17.
//  Copyright © 2017 Lauren Antilla. All rights reserved.
//

import Foundation
// Build a Calculator section of hw
// add 2 ints
func add(x: Int?, y:Int?) -> Int? {
    if x != nil && y != nil {
        return x! + y!
    } else {
        return nil
    }
}
// subtract 2 ints
func subtract(x: Int?, y:Int?) -> Int? {
    if x != nil && y != nil {
        return x! - y!
    } else {
        return nil
    }
}
// multiply 2 ints
func multiply(x: Int?, y:Int?) -> Int? {
    if x != nil && y != nil {
        return x! * y!
    } else {
        return nil
    }
}
// divide 2 ints
func divide(x: Int?, y:Int?) -> Int? {
    if x != nil && y != nil {
        return x! / y!
    } else {
        return nil
    }
}

// generic math operation function
// can be called like mathOperation(divide, x: 25, y: 5)
func mathOperation(_ mathFunc: (Int?, Int?) -> Int?, x:Int?, y: Int?)-> Int? {
    return mathFunc(x, y)
}

// Array Fun section of hw
func addArray(nums: [Int?]) -> Int? {
    var result = 0
    for i in nums {
        if i != nil {
            result += i!
        } else {
            return nil
        }
    }
    return result
}

// multiply all of the ints in a given array
func multArray(nums: [Int?]) -> Int? {
    var result = 1
    for i in nums {
        if i != nil {
            result *= i!
        } else {
            return nil
        }
    }
    return result
}

// count number of ints in given array
func count(nums: [Int?])-> Int? {
    for i in nums {
        if i == nil {
            return nil
        }
    }
    return nums.count
}

// avg of ints in a given array, returns an Int to be more accurate about avg
func avg(nums: [Int?]) -> Int? {
    var result = 0
    for i in nums {
        if i != nil {
            result += i!
        } else {
            return nil
        }
    }
    if nums.count == 0 {
        return 0
    } else {
        return result / nums.count
    }
}

// generic math operation function
// can be called like mathResult(count, a:x)
func mathResult(_ mathFunc: ([Int]) -> Int, a:[Int])-> Int {
    return mathFunc(a)
}

//Points section of hw
// add tuples
func addTup(point1: (x1: Int, y1: Int), point2: (x2: Int, y2: Int)) -> (Int, Int) {
    let x = point1.x1 + point2.x2
    let y = point1.y1 + point2.y2
    return (x, y)
}

// subtract tuples
func subTup(point1: (x1: Int, y1: Int), point2: (x2: Int, y2: Int)) -> (Int, Int) {
    let x = point1.x1 - point2.x2
    let y = point1.y1 - point2.y2
    return (x, y)
}

// add two dictionaries together
// doubles version
func addDict(pt1: [String: Double], pt2: [String: Double]) -> [String: Double] {
    var x = 0.0
    var y = 0.0
    if pt1["x"] != nil {
        x = pt1["x"]!
    }
    if pt1["y"] != nil {
        y = pt1["y"]!
    }
    if pt2["x"] != nil {
        x += pt2["x"]!
    }
    if pt2["y"] != nil {
        y += pt2["y"]!
    }
    let result = ["x": x, "y": y]
    return result
}
// integer version
func addDict(pt1: [String: Int], pt2: [String: Int]) -> [String: Int] {
    var x = 0
    var y = 0
    if pt1["x"] != nil {
        x = pt1["x"]!
    }
    if pt1["y"] != nil {
        y = pt1["y"]!
    }
    if pt2["x"] != nil {
        x += pt2["x"]!
    }
    if pt2["y"] != nil {
        y += pt2["y"]!
    }
    let result = ["x": x, "y": y]
    return result
}

// subtract: dictionary1 - dictionary2
// doubles version
func subDict(pt1: [String: Double], pt2: [String: Double]) -> [String: Double] {
    var x = 0.0
    var y = 0.0
    if pt1["x"] != nil {
        x = pt1["x"]!
    }
    if pt1["y"] != nil {
        y = pt1["y"]!
    }
    if pt2["x"] != nil {
        x -= pt2["x"]!
    }
    if pt2["y"] != nil {
        y -= pt2["y"]!
    }
    let result = ["x": x, "y": y]
    return result
}
// integer version
func subDict(pt1: [String: Int], pt2: [String: Int]) -> [String: Int] {
    var x = 0
    var y = 0
    if pt1["x"] != nil {
        x = pt1["x"]!
    }
    if pt1["y"] != nil {
        y = pt1["y"]!
    }
    if pt2["x"] != nil {
        x -= pt2["x"]!
    }
    if pt2["y"] != nil {
        y -= pt2["y"]!
    }
    let result = ["x": x, "y": y]
    return result
}
