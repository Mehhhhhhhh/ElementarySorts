//
//  SelectionSort.swift
//  ElementarySorts
//
//  Created by meh on 3/23/17.
//  Copyright © 2017 ForeCyte. All rights reserved.
//

import Foundation

func selection_sort(array: [Int]) -> [Int] {
  var array = array
  for index in stride(from: 0, to: array.count, by: 1) {
    var min: Int = index
    for min_index in stride(from: index+1, to: array.count, by: 1) {
      if array[min_index] < array[min] {
        min = min_index
      }
    }
    let swap_i    = array[index]
    let swap_min  = array[min]
    array[index]  = swap_min
    array[min]    = swap_i
  }
  return array
}
