//
//  main.swift
//  TheCellSell
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/the-cell-sell.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("The Cell Sell")
print("=============")

// INPUT

// Get daytime minutes
var daytime = 0
while true {
    
    // Prompt the user
    print("Number of daytime minutes? ")
    
    // Collect input
    guard let givenInput = readLine() else{
        continue
    }
    
    // Convert to an integer
    guard let givenInteger = Int(givenInput) else {
        continue
    }
    
    // Check that the value is positive (zero or above)
    guard givenInteger >= 0 else {
        continue
    }
    
    // Asign the given integer to our "daytime" variable
    daytime = givenInteger
    
    // Stop th loop
    break
}


// Get evening minutes
var evening = 0
while true {
    
    // Prompt the user
    print("Number of evening minutes? ")
    
    // Collect input
    guard let givenInput = readLine() else{
        continue
    }
    
    // Convert to an integer
    guard let givenInteger = Int(givenInput) else {
        continue
    }
    
    // Check that the value is positive (zero or above)
    guard givenInteger >= 0 else {
        continue
    }
    
    // Asign the given integer to our "evening" variable
    evening = givenInteger
    
    // Stop th loop
    break
}


// Get weekend minutes
var weekend = 0
while true {
    
    // Prompt the user
    print("Number of weekend minutes? ")
    
    // Collect input
    guard let givenInput = readLine() else{
        continue
    }
    
    // Convert to an integer
    guard let givenInteger = Int(givenInput) else {
        continue
    }
    
    // Check that the value is positive (zero or above)
    guard givenInteger >= 0 else {
        continue
    }
    
    // Asign the given integer to our "weekend" variable
    evening = givenInteger
    
    // Stop th loop
    break
}


// PROCESS

// Calculate cost for plan A
var a = 0

// Add daytime cost
if a <= 100 {
    a = 0
} else {
    a += (daytime - 100) * 25
}



// Add evening cost
a += evening * 15

// Add wekend cost
a += weekend * 20

// Calculate cost for plan B
var b = 0

// Add daytime cost
if b <= 250 {
    b = 0
} else {
    b += (daytime - 250) * 45
}

// Add evening cost
b += evening * 35

// Add weekend cost
b += weekend * 25


// OUTPUT
print("Plan A costs \(a)")
print("Plan B costs \(b)")

if a > b {
    print("Plan B is cheapest.")
} else {
    print("Plan A is cheapest.")
}
