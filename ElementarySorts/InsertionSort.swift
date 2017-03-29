//
//  InsertionSort.swift
//  ElementarySorts
//
//  Created by meh on 3/23/17.
//  Copyright © 2017 ForeCyte. All rights reserved.
//

import Foundation
import AppKit

/// Insertion Sort
struct InsertionSort {

  // Sorts array by looking for [min] in iteration i
  // @Returns sorted array
  func sort(array: [Int]) -> [Int] {
    var printout_ = header(array: array)
    var array = array
    for i in stride(from: 0, to: array.count, by: 1) {
      var lastJ = i
      for j in stride(from: i, to: 0, by: -1) {
        lastJ = j
        if (array[j] < array[j-1]) {
          // swap
          let item = array[j]
          array[j]  = array[j-1]
          array[j-1]  = item
          // increment swap J index
          lastJ = j-1
        } else { /*
          let row_ = row(array, i, j)
          print(row_)
          printout_ += "\(row(array, i, j))\n" */
          break
        }
      }
      printout_ += "\n\(i)\t\(lastJ)"
      printout_ += "\(row(array, i, lastJ))\n"
    }
    print(printout_)
    return array
  }
}

// Swift Console Color Code
// \u{001B}[\(attribute code like bold, dim, normal);\(color code)m

// Color codes
// black   30
// red     31
// green   32
// yellow  33
// blue    34
// magenta 35
// cyan    36
// white   37

// println("\u{001B}[0;33myellow")

extension InsertionSort: CustomDebugStringConvertible {

  var debugDescription: String {
    return "NOT IMPLEMENTED"
  }

  func header(array: [Int]) -> String {
    var header_ = "\t\t[]\n"
    header_ += "i\tj\t"
    for index in 0..<array.count {
      header_ += "\(index)\t"
    }
    return header_
  }

  func row(_ array: [Int], _ i: Int, _ j: Int) -> String {
    var row_ = ""
    for index in 0..<array.count {
      if index == j {
        row_ += "\t\(array[index])"
      } else if index == (j-1) {
        row_ += "\t|\(array[index])"
      } else if j < index && index < i {
        row_ += "\t\(array[index])"
      } else {
        row_ += "\t\(array[index])"
      }
    }
    return row_
  }
}

extension InsertionSort {

  func attributedDebugString(array: [Int], i: Int, j: Int) -> String {
    let string    = "\(array)\(i)\(j)"


    return string
  }
}



/// Sorts input
/// in iteration i, swap [i] with each larger entry to its left
func insertion_sort(array: [Int]) -> [Int] {
  var array = array
  for i in stride(from: 0, to: array.count, by: 1) {
    for j in stride(from: i, to: 0, by: -1) { // look left
      if array[j] < array[j-1] { // is the index to the left larger than the current index
        let jMinus1 = array[j-1]
        let jay     = array[j]
        array[j]    = jMinus1
        array[j-1]  = jay
      } else { break; }
    }
  }
  return array
}
