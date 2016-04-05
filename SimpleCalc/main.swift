//
//  main.swift
//  SimpleCalc
//
//  Created by studentuser on 4/5/16.
//  Copyright © 2016 studentuser. All rights reserved.
//

import Foundation
var count: UInt = 1
print("Enter an expression separated by returns:")
var num1 = UInt.init(readLine(stripNewline: true)!)!
var sum: UInt = num1
while(true){
    //var num1 = UInt.init(readLine(stripNewline: true)!)!
    var symbol = readLine(stripNewline:true)!
    if symbol == "/" || symbol == "*" || symbol == "+" || symbol == "-" || symbol == "%" {
        var operation = symbol
        var num2 = UInt.init(readLine(stripNewline:true)!)!
        count += 1
        sum = sum + num2
        var result : UInt = 0
        if operation == "+" {
            result = num1 + num2
        } else if operation == "-" {
            result = num1 - num2
        } else if operation == "/" {
            result = num1 / num2
        } else if operation == "*" {
            result = num1 * num2
        } else if operation == "%" {
            result = num1 % num2
        }
        print("Result: \(result)")
    } else {
        var x : Int? = Int(symbol)
        if (x != nil){
            count+=1
            num1 = UInt.init(symbol)!
            continue
        } else if symbol == "count"{
            print(count)
        } else if symbol == "avg" {
            print(sum / count)
        } //else if symbol == "fact" {
        //var fact: UInt  = 0
        //for index in 1 ... x {
        //  print("x")
        //fact = fact + index
        //}
        //            print(fact)
        //        }
        //}
    }
}

