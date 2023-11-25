//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Phelan, Finnian (PAH) on 16/11/2023.
//

import XCTest

func createRandomList(_ length: Int) -> [Int] {
	var randomList = Array(repeating: 0, count: length)
	
	for i in 0..<length {
		randomList[i] = Int.random(in: 1...100)
	}
	
	return randomList
}

func createSortedList(_ length: Int) -> [Int] {
	var sortedList = Array(repeating: 0, count: length)
	
	for i in 0..<length {
		sortedList[i] = i
	}
	
	return sortedList
}

final class SortingTest: XCTestCase {
	
	let sorting = Sorting()
	
	let testArrays = [
		(data: [5, 4, 3, 2, 1], sortedData: [1, 2, 3, 4, 5], itemToFind: 5, expectedItemIndex: 0, expectedSortedItemIndex: 4),
		(data: [10, 15, 8, 20, 3], sortedData: [3, 8, 10, 15, 20], itemToFind: 15, expectedItemIndex: 1, expectedSortedItemIndex: 3),
		(data: [8, 1, 7, 12, 20], sortedData: [1, 7, 8, 12, 20], itemToFind: 7, expectedItemIndex: 2, expectedSortedItemIndex: 1),
		(data: [16, 2, 9, 13, 6], sortedData: [2, 6, 9, 13, 16], itemToFind: 13, expectedItemIndex: 3, expectedSortedItemIndex: 3),
		(data: [10, 14, 11, 9, 4], sortedData: [4, 9, 10, 11, 14], itemToFind: 4, expectedItemIndex: 4, expectedSortedItemIndex: 0),
		(data: [7, 5, 8, 19, 10], sortedData: [5, 7, 8, 10, 19], itemToFind: 7, expectedItemIndex: 0, expectedSortedItemIndex: 1),
		(data: [15, 3, 6, 10, 13], sortedData: [3, 6, 10, 13, 15], itemToFind: 3, expectedItemIndex: 1, expectedSortedItemIndex: 0),
		(data: [2, 11, 9, 7, 16], sortedData: [2, 7, 9, 11, 16], itemToFind: 9, expectedItemIndex: 2, expectedSortedItemIndex: 2),
		(data: [8, 1, 9, 5, 12], sortedData: [1, 5, 8, 9, 12], itemToFind: 5, expectedItemIndex: 3, expectedSortedItemIndex: 1),
		(data: [9, 7, 8, 4, 10], sortedData: [4, 7, 8, 9, 10], itemToFind: 10, expectedItemIndex: 4, expectedSortedItemIndex: 4)
	]
	
	func testBubbleSortSuccess() {
		print("Testing bubble sort...")
		for testCase in testArrays {
			let actual = sorting.bubbleSort(testCase.data)
			XCTAssertEqual(actual, testCase.sortedData)
		}
	}
	
	func testBubbleSortPerformanceWithListLength5() {
		self.measure {
			sorting.bubbleSort(createRandomList(5))
		}
	}
	
	func testBubbleSortPerformanceWithListLength50() {
		self.measure {
			sorting.bubbleSort(createRandomList(50))
		}
	}
	
	func testBubbleSortPerformanceWithListLength500() {
		self.measure {
			sorting.bubbleSort(createRandomList(500))
		}
	}
	
	func testMergeSortSuccess() {
		print("Testing merge sort...")
		for testCase in testArrays {
			let actual = sorting.mergeSort(testCase.data)
			XCTAssertEqual(actual, testCase.sortedData)
		}
	}
	
	func testMergeSortPerformanceWithListLength5() {
		self.measure {
			sorting.mergeSort(createRandomList(5))
		}
	}
	
	func testMergeSortPerformanceWithListLength50() {
		self.measure {
			sorting.mergeSort(createRandomList(50))
		}
	}
	
	func testMergeSortPerformanceWithListLength500() {
		self.measure {
			sorting.mergeSort(createRandomList(500))
		}
	}
	
	func testQuickSortSuccess() {
		print("Testing QuickSort...")
		for testCase in testArrays {
			let actual = sorting.quickSort(testCase.data)
			XCTAssertEqual(actual, testCase.sortedData)
		}
	}
	
	func testQuickSortPerformanceWithListLength5() {
		self.measure {
			sorting.quickSort(createRandomList(5))
		}
	}
	
	func testQuickSortPerformanceWithListLength50() {
		self.measure {
			sorting.quickSort(createRandomList(50))
		}
	}
	
	func testQuickSortPerformanceWithListLength500() {
		self.measure {
			sorting.quickSort(createRandomList(500))
		}
	}
	
	func testInsertionSortSuccess() {
		print("Testing insertion sort...")
		for testCase in testArrays {
			let actual = sorting.insertionSort(testCase.data)
			XCTAssertEqual(actual, testCase.sortedData)
		}
	}
	
	func testInsertionSortPerformanceWithListLength5() {
		self.measure {
			sorting.insertionSort(createRandomList(5))
		}
	}
	
	func testInsertionSortPerformanceWithListLength50() {
		self.measure {
			sorting.insertionSort(createRandomList(50))
		}
	}
	
	func testInsertionSortPerformanceWithListLength500() {
		self.measure {
			sorting.insertionSort(createRandomList(500))
		}
	}
	
	func testLinearSearchSuccess() {
		print("Testing linear search...")
		for testCase in testArrays {
			let actual = sorting.linearSearch(testCase.data, testCase.itemToFind)
			XCTAssertEqual(actual, testCase.expectedItemIndex)
		}
	}
	
	func testLinearSearchPerformanceWithListLength5() {
		self.measure {
			let randomList = createRandomList(5)
			sorting.linearSearch(randomList, randomList[randomList.count-1])
		}
	}
	
	func testLinearSearchPerformanceWithListLength50() {
		self.measure {
			let randomList = createRandomList(50)
			sorting.linearSearch(randomList, randomList[randomList.count-1])
		}
	}
	
	func testLinearSearchPerformanceWithListLength500() {
		self.measure {
			let randomList = createRandomList(500)
			sorting.linearSearch(randomList, randomList[randomList.count-1])
		}
	}
	
	func testBinarySearchSuccess() {
		print("Testing binary search...")
		
		XCTAssertEqual(sorting.binarySearch([1,2,3,4,5], 5), 4)
	}
	
	func testBinarySearchPerformanceWithListLength5() {
		self.measure {
			let sortedList = createSortedList(5)
			sorting.binarySearch(sortedList, sortedList[sortedList.count-1])
		}
	}
	
	func testBinarySearchPerformanceWithListLength50() {
		self.measure {
			let sortedList = createSortedList(50)
			sorting.binarySearch(sortedList, sortedList[sortedList.count-1])
		}
	}
	
	func testBinarySearchPerformanceWithListLength500() {
		self.measure {
			let sortedList = createSortedList(500)
			sorting.binarySearch(sortedList, sortedList[sortedList.count-1])
		}
	}
}
