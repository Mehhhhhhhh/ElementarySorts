//
//  QueueNode.swift
//  ElementarySorts
//
//  Created by meh on 3/29/17.
//  Copyright © 2017 ForeCyte. All rights reserved.
//

import Foundation

class Node<T> {

  let item: T
  var next: Node<T>?

  init(_ item_: T) {
    item = item_
  }
}

extension Node: ChainAPI {

  func size() -> Int {
    return size(self)
  }

  func size(_ node: Node<T>?) -> Int {
    guard let node_ = node else { return 0 }
    return 1+size(node_.next)
  }
}

extension Node: CustomDebugStringConvertible {

  public var debugDescription: String {
    return _next_trace(node: self)
  }

  private func _next_trace(node: Node?) -> String {
    guard let next_ = node?.next else { return "\(item)" }
    return "\(item) -> \(next_)"
  }
}
