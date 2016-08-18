//
//  Operators.swift
//  ReactiveCocoaExperiments
//
//  Created by Andrew Sowers on 8/17/16.
//  Copyright © 2016 Andrew Sowers. All rights reserved.
//

import Foundation

infix operator |> { precedence 50 associativity left }
public func |> <T,U>(lhs: T, rhs: T -> U) -> U {
	return rhs(lhs)
}