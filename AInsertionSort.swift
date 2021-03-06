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
    for j in stride(from: i, to: 0, by: -1) {
      if a[j] < a[j - 1] {
        let tmpMinus = a[j-1]
        let tmpJ     = a[j]
        a[j] = tmpMinus
        a[j-1] = tmpJ
      } else { break }
    }
  }
  return a
}
