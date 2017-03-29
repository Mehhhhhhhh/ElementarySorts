//
//  main.swift
//  ElementarySorts
//
//  Created by meh on 3/23/17.
//  Copyright © 2017 ForeCyte. All rights reserved.
//

import Foundation

let array = [10, 9, 7, 3, 5, 4, 1, 8, 2, 6]
print("Original\n\(array)\n")
print("Selection Sort\n\(selection_sort(array: array))\n")
print("Insertion Sort\n\(insertion_sort(array: array.reversed()))")

let insertionSorter = InsertionSort()
print("\(insertionSorter.sort(array: array))")



print("\nA SelectionSort: \(selectionSort(array: array))\n")
print("A InsertionSort: \(insertionSort(array))\n")
print("A ShellSort: \(aShellSort(a: array, h: 2))\n")
print("\nA SelectionSort: \(selectionSort(array: array, 2))\n")
print("\u{001B}[0;37m" + "Testing")

// ANSI Colors 
enum ANSIColors: String {
  case black = "\u{001B}[0;30m"
  case red = "\u{001B}[0;31m"
  case green = "\u{001B}[0;32m"
  case yellow = "\u{001B}[0;33m"
  case blue = "\u{001B}[0;34m"
  case magenta = "\u{001B}[0;35m"
  case cyan = "\u{001B}[0;36m"
  case white = "\u{001B}[0;37m"

  func name() -> String {
    switch self {
    case .black: return "Black"
    case .red: return "Red"
    case .green: return "Green"
    case .yellow: return "Yellow"
    case .blue: return "Blue"
    case .magenta: return "Magenta"
    case .cyan: return "Cyan"
    case .white: return "White"
    }
  }

  static func all() -> [ANSIColors] {
    return [.black, .red, .green, .yellow, .blue, .magenta, .cyan, .white]
  }
}

func + (left: ANSIColors, right: String) -> String {
  return left.rawValue + right
}

// END

// Demo: launch this swift file from the command line
// $ swift demo.swift
// if you've copied this code inside a Playground just do:
// $ swift MyPlayground.playground/Contents.swift

for c in ANSIColors.all() {
  print(c + "This is printed in " + c.name())
}

print("\u{001B}[0;31m" + "This is a test")

