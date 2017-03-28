//
//  AInsertionSort.swift
//  ElementarySorts
//
//  Created by Alex Blanchard on 3/26/17.
//  Copyright © 2017 ForeCyte. All rights reserved.
//

import Foundation

func insertionSort(_ a: [Int]) -> [Int] {
  var a = a
  for i in stride(from: 0, to: a.count, by: 1) {
    var j = i
    while j > 0 {
      if a[i] < a[j-1] {
        let temp_i = a[i]
        let temp_j = a[j-1]
        a[i] = temp_j
        a[j-1] = temp_i
        j -= 1
      }
    }
  }
  
  return a
}
