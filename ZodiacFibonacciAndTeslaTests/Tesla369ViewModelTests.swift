//
//  Tesla369ViewModelTests.swift
//  ZodiacFibonacciAndTeslaTests
//
//  Created by Najia Haider on 6/20/23.
//

import XCTest
@testable import ZodiacFibonacciAndTesla

final class Tesla369ViewModelTests: XCTestCase {
    var viewModel: TeslaViewModel?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        viewModel = TeslaViewModel()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        viewModel = nil
    }
    
    func testStringReduction() {
        let expectedResult = "5 + 5 = 10\n\t 1 + 0 = 1"
        let result = viewModel?.stringReduction(5)
        XCTAssertEqual(result, expectedResult)
    }
    
    func testStringReductionWithLargeNumber() {
        let expectedResult = "123456 + 123456 = 246912\n\t 2 + 4 + 6 + 9 + 1 + 2 = 24\n\t 2 + 4 = 6"
        let result = viewModel?.stringReduction(123456)
        XCTAssertEqual(result, expectedResult)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            _ = viewModel?.stringReduction(1000000)
        }
    }

}
