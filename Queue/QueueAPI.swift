//
//  QueueAPI.swift
//  ElementarySorts
//
//  Created by meh on 3/28/17.
//  Copyright © 2017 ForeCyte. All rights reserved.
//

import Foundation

/// @API  Collection of objects.
///       FIFO implementation - first item inserted is the first item removed
///       Intent is clear when we insert
/// @Operations  Insert, Remove, Iterate, Test if Empty
protocol QueueAPI {
  /// type of item in the queue
  associatedtype ItemType

  /// Enqueue examine the item most recently added
  mutating func enqueue(_ item: ItemType)

  /// Dequeue examine the item least recently added
  mutating func dequeue() -> ItemType?
}
