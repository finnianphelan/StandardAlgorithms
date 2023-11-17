//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Phelan, Finnian (PAH) on 16/11/2023.
//

import XCTest

final class SortingTest: XCTestCase {

	func testToSeeWhetherSortingFunctionHasWorked() {
		
		let testArrays = [
			(data: [5, 4, 3, 2, 1], expected: [1, 2, 3, 4, 5]),
			(data: [10, 15, 8, 20, 3], expected: [3, 8, 10, 15, 20]),
			(data: [8, 1, 7, 12, 20], expected: [1, 7, 8, 12, 20]),
			(data: [16, 2, 9, 13, 6], expected: [2, 6, 9, 13, 16]),
			(data: [10, 14, 11, 9, 4], expected: [4, 9, 10, 11, 14]),
			(data: [7, 5, 8, 19, 10], expected: [5, 7, 8, 10, 19]),
			(data: [15, 3, 6, 10, 13], expected: [3, 6, 10, 13, 15]),
			(data: [2, 11, 9, 7, 16], expected: [2, 7, 9, 11, 16]),
			(data: [8, 1, 9, 5, 12], expected: [1, 5, 8, 9, 12]),
			(data: [9, 7, 8, 4, 10], expected: [4, 7, 8, 9, 10])
		]
		
		for testCase in testArrays {
			let actual = mergeSort(testArray)
			XCTAssertEqual(actual, expected)
		}
	}
}
