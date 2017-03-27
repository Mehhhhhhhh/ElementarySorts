//
//  ASelectionSort.swift
//  ElementarySorts
//
//  Created by Alex Blanchard on 3/25/17.
//  Copyright © 2017 ForeCyte. All rights reserved.
//

import Foundation

func selectionSort(array: [Int], _ sortGap: Int = 1) -> [Int] {
  var array = array
  for index in stride(from: 0, to: array.count, by: sortGap) {
    var min: Int = index
    for minIndex in stride(from: index+1, to: array.count, by: sortGap) {
      if array[minIndex] < array[min] {
        min = minIndex
      }
    }
    let swapi    = array[index]
    let swapMin  = array[min]
    array[index] = swapMin
    array[min]   = swapi
  }
  return array
}
