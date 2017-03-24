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

