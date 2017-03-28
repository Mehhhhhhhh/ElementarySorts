//
//  ShellSort.swift
//  ElementarySorts
//
//  Created by meh on 3/24/17.
//  Copyright © 2017 ForeCyte. All rights reserved.
//

import Foundation

/// Implementation of an h-sorter
struct ShellSort {

  /// h-sorts the array
  /// @returns  an h-sort array using y = 3x+1 as the initialization function
  func sort(_ array: [Int]) -> [Int] {
    var array = array

    // h variable
    // we iterate from 1 to an h >= N/3, where N=array.count
    var h = 1
    while (h < (array.count/3)) {
      h = 1 + 3 * h
    }

  

    return array
  }
}
