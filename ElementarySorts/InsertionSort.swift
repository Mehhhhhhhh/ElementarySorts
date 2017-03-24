//
//  InsertionSort.swift
//  ElementarySorts
//
//  Created by meh on 3/23/17.
//  Copyright © 2017 ForeCyte. All rights reserved.
//

import Foundation

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
