//
//  SnapshotTests.swift
//  SnapshotTests
//
//  Created by Paulina Grabowska on 3/9/2024.
//

import SnapshotTesting
import XCTest
@testable import CD

class TextViewTests: XCTestCase {
  func testMyViewController() {
      let view = TextView(viewModel: TextViewModel())

      assertSnapshot(of: view, as: .image)
  }
}
