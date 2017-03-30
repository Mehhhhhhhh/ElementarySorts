//
//  AShellSort.swift
//  ElementarySorts
//
//  Created by Alex Blanchard on 3/27/17.
//  Copyright © 2017 ForeCyte. All rights reserved.
//

import Foundation

func aShellSort(a: [Int], h: Int = 1) -> [Int] {
  var a = a
  for i in stride(from: h, to: a.count, by: 1) {
    for j in stride(from: i - h, to: 0, by: -h) {
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
