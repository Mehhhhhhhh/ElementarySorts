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
