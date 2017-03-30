//
//  ListAPI.swift
//  ElementarySorts
//
//  Created by meh on 3/29/17.
//  Copyright © 2017 ForeCyte. All rights reserved.
//

import Foundation

protocol ChainAPI {
  func size() -> Int
}

protocol ListAPI: ChainAPI {
  func isEmpty()  -> Bool
}

extension ListAPI {
  func isEmpty() -> Bool {
    return size() == 0
  }
}


