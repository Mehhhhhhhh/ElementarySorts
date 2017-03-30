//
//  QueueOfString.swift
//  ElementarySorts
//
//  Created by meh on 3/29/17.
//  Copyright © 2017 ForeCyte. All rights reserved.
//

import Foundation

func testQueueOfStrings(_ string: String) -> LinkedListQueue<String> {
  var queue: LinkedListQueue<String> = LinkedListQueue()
  string.components(separatedBy: " ").forEach {
    component in
    if component.compare("-") == .orderedSame {
      print("QUEUE\n\(queue)\n")
      queue.dequeue()
      print("DEQUEUE\n\(queue)")

    }
    else { queue.enqueue(component) }
  }
  return queue
}
