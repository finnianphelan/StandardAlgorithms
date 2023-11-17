//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Phelan, Finnian (PAH) on 16/11/2023.
//

import XCTest

final class SortingTest: XCTestCase {
	
	let testArrays = [
		(data: [5, 4, 3, 2, 1], sortedData: [1, 2, 3, 4, 5], itemToFind: 5, expectedItemIndex: 0),
		(data: [10, 15, 8, 20, 3], sortedData: [3, 8, 10, 15, 20], itemToFind: 15, expectedItemIndex: 1),
		(data: [8, 1, 7, 12, 20], sortedData: [1, 7, 8, 12, 20], itemToFind: 7, expectedItemIndex: 2),
		(data: [16, 2, 9, 13, 6], sortedData: [2, 6, 9, 13, 16], itemToFind: 13, expectedItemIndex: 3),
		(data: [10, 14, 11, 9, 4], sortedData: [4, 9, 10, 11, 14], itemToFind: 4, expectedItemIndex: 4),
		(data: [7, 5, 8, 19, 10], sortedData: [5, 7, 8, 10, 19]),
		(data: [15, 3, 6, 10, 13], sortedData: [3, 6, 10, 13, 15]),
		(data: [2, 11, 9, 7, 16], sortedData: [2, 7, 9, 11, 16]),
		(data: [8, 1, 9, 5, 12], sortedData: [1, 5, 8, 9, 12]),
		(data: [9, 7, 8, 4, 10], sortedData: [4, 7, 8, 9, 10])
	]

	func testBubbleSort() {
		for testCase in testArrays {
			let actual = bubbleSort(testArray)
			XCTAssertEqual(actual, sortedData)
		}
	}
	
	func testMergeSort() {
		for testCase in testArrays {
			let actual = mergeSort(testArray)
			XCTAssertEqual(actual, sortedData)
		}
	}
	
	func testQuickSort() {
		for testCase in testArrays {
			let actual = quickSort(testArray)
			XCTAssertEqual(actual, sortedData)
		}
	}
	
	func testInsertionSort() {
		for testCase in testArrays {
			let actual = insertionSort(testArray)
			XCTAssertEqual(actual, sortedData)
		}
	}
}
