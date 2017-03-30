//
//  LinkedListQueue.swift
//  ElementarySorts
//
//  Created by meh on 3/28/17.
//  Copyright © 2017 ForeCyte. All rights reserved.
//

import Foundation

struct LinkedListQueue<T> {
  /// linked list head pointer
  internal var _head: Node<T>?
  /// linked list tail pointer
  internal var _tail: Node<T>?
}

extension LinkedListQueue: ChainAPI {

  func size() -> Int {
    guard let head_ = _head else { return 0 }
    return head_.size()
  }
}

extension LinkedListQueue: ListAPI { }

/// Queue implementation using a linked list
/// @Operations
/// @insert `enqueue` by appending item to the tail
/// @remove `dequeue` pops an item from the front of the list
/// @empty? head and tail are null
/// @size   recursively count chained nodes
extension LinkedListQueue: QueueAPI {

  mutating func enqueue(_ item: T) {
    let last_ = Node(item)

    if isEmpty() {
      _head = last_
      _tail = last_
    } else {
      _tail?.next = last_
    }
    _tail = last_
  }

  mutating func dequeue() -> T? {
    guard let head_ = _head else { return nil }
    if let next_ = head_.next {
      _head = next_ }
    else {
      _head = nil
      _tail = nil }
    return head_.item
  }
}
