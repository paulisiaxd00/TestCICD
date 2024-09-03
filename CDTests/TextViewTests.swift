//
//  TextViewTests.swift
//  CD
//
//  Created by Paulina Grabowska on 3/9/2024.
//

import XCTest
@testable import CD

final class TextViewTests: XCTestCase {
    private var viewModel: TextViewModel!

    override func setUp() {
        viewModel = TextViewModel()
    }
    
    override func tearDown() {
        viewModel = nil
    }

    func testTitleValue() {
        XCTAssertNotNil(viewModel.text)
        XCTAssertEqual(viewModel.text, "Hello, world world world!")
    }
}
