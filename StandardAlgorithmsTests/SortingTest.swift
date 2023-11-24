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
		(data: [7, 5, 8, 19, 10], sortedData: [5, 7, 8, 10, 19], itemToFind: 7, expectedItemIndex: 0),
		(data: [15, 3, 6, 10, 13], sortedData: [3, 6, 10, 13, 15], itemToFind: 3, expectedItemIndex: 1),
		(data: [2, 11, 9, 7, 16], sortedData: [2, 7, 9, 11, 16], itemToFind: 9, expectedItemIndex: 2),
		(data: [8, 1, 9, 5, 12], sortedData: [1, 5, 8, 9, 12], itemToFind: 5, expectedItemIndex: 3),
		(data: [9, 7, 8, 4, 10], sortedData: [4, 7, 8, 9, 10], itemToFind: 10, expectedItemIndex: 4)
	]
	
	func testBubbleSort() {
		print("Testing bubble sort...")
		for testCase in testArrays {
			print("Testing with following array: \(testCase[data])")
			let actual = bubbleSort(testCase[data])
			XCTAssertEqual(actual, testCase[sortedData])
		}
		print("Finished testing bubble sort.")
	}
	
	func testMergeSort() {
		print("Testing merge sort...")
		for testCase in testArrays {
			print("Testing with following array: \(testCase[data])")
			let actual = mergeSort(testCase[data])
			XCTAssertEqual(actual, testCase[sortedData])
		}
		print("Finished testing merge sort.")
	}
	
	func testQuickSort() {
		print("Testing QuickSort...")
		for testCase in testArrays {
			print("Testing with following array: \(testCase[data])")
			let actual = quickSort(testCase[data])
			XCTAssertEqual(actual, testCase[sortedData])
		}
		print("Finished inserting QuickSort.")
	}
	
	func testInsertionSort() {
		print("Testing insertion sort...")
		for testCase in testArrays {
			print("Testing with following array: \(testCase[data])")
			let actual = insertionSort(testCase[data])
			XCTAssertEqual(actual, testCase[sortedData])
		}
		print("Finished testing insertion sort.")
	}
	
	func testLinearSearch() {
		print("Testing linear search...")
		for testCase in testArrays {
			print("Testing with following array and item: \(testCase[data]), \(testCase[itemToFind])")
			let actual = linearSearch(testCase[data], testCase[itemToFind])
			XCTAssertEqual(actual, testCase[expectedItemIndex])
		}
		print("Finished testing linear search.")
	}
	
	func testBinarySearch() {
		print("Testing binary search...")
		for testCase in testArrays {
			print("Testing with following array and item: \(testCase[data]), \(testCase[itemToFind])")
			let actual = linearSearch(testCase[data], testCase[itemToFind])
			XCTAssertEqual(actual, testCase[expectedItemIndex])
		}
		print("Finished testing binary search.")
	}
}
