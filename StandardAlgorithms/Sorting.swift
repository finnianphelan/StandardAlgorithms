//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Phelan, Finnian (PAH) on 10/11/2023.
//

import Foundation

class Sorting {
	
	func bubbleSort(_ inputArray: [Int]) -> [Int] {
		var inputArray = inputArray
		for _ in 1...inputArray.count {
			for j in 1...inputArray.count-1 {
				let i = j-1
				let itemAtJ = inputArray[j]
				
				if inputArray[i] > inputArray[j] {
					inputArray[j] = inputArray[i]
					inputArray[i] = itemAtJ
				}
			}
		}
		return inputArray
	}
	
	func mergeSort(_ inputArray: [Int]) -> [Int] {
		var sortedArray = inputArray
		
		if inputArray.count <= 1 {
			return inputArray
		}
		
		else {
			
			let array1 = mergeSort(Array(inputArray[0..<inputArray.count/2]))
			let array2 = mergeSort(Array(inputArray[inputArray.count/2..<inputArray.count]))
			sortedArray = merge(array1, array2)
		}
		
		func merge(_ array1: [Int], _ array2: [Int]) -> [Int] {
			var mergedArray: [Int] = []
			var leftIndex = 0
			var rightIndex = 0
			
			while leftIndex < array1.count && rightIndex < array2.count {
				let leftElement = array1[leftIndex]
				let rightElement = array2[rightIndex]
				
				if leftElement < rightElement {
					mergedArray.append(leftElement)
					leftIndex += 1
				} else if leftElement > rightElement {
					mergedArray.append(rightElement)
					rightIndex += 1
				} else {
					mergedArray.append(leftElement)
					leftIndex += 1
					mergedArray.append(rightElement)
					rightIndex += 1
				}
			}
			while leftIndex < array1.count {
				mergedArray.append(array1[leftIndex])
				leftIndex += 1
			}
			while rightIndex < array2.count {
				mergedArray.append(array2[rightIndex])
				rightIndex += 1
			}
			
			return mergedArray
		}
		
		return sortedArray
	}
	
	func quickSort(_ inputArray: [Int]) -> [Int] {
		if inputArray.count <= 1 {
			return inputArray
		}
		
		else {
			let middleIndex = inputArray.count / 2
			let middleItem = inputArray[middleIndex]
			
			var leftArray: [Int] = []
			var rightArray: [Int] = []
			
			for (index, item) in inputArray.enumerated() {
				if index != middleIndex {
					if item < middleItem {
						leftArray.append(item)
					} else {
						rightArray.append(item)
					}
				}
			}
			
			return quickSort(leftArray) + [middleItem] + quickSort(rightArray)
		}
	}
	
	func insertionSort(_ inputArray: [Int]) -> [Int] {
		var sortedArray = [inputArray[0]]
		
		for i in 1..<inputArray.count {
			for j in stride(from: sortedArray.count-1, through: 0, by: -1) {
				if inputArray[i] == sortedArray[j] || inputArray[i] > sortedArray[j] {
					sortedArray.insert(inputArray[i], at: j+1)
					break
				}
				else if j == 0 {
					sortedArray.insert(inputArray[i], at: 0)
				}
			}
		}
		
		return sortedArray
	}
	
	func linearSearch(_ inputArray: [Int], _ itemToFind: Int) -> Int {
		for i in 0..<inputArray.count {
			if inputArray[i] == itemToFind {
				return i
			}
		}
		return -1
	}
	
	func binarySearch(_ inputArray: [Int], _ itemToFind: Int) -> Int {
		var searchingArray = inputArray
		var currentlySearching = true
		var middleIndex: Int
		
		while currentlySearching {
			if searchingArray.count > 1 {
				middleIndex = searchingArray.count / 2
				
				if searchingArray[middleIndex] == itemToFind {
					return middleIndex
				}
				
				else if searchingArray[middleIndex] < itemToFind {
					searchingArray = Array(searchingArray.suffix(from: middleIndex + 1))
				}
				
				else {
					searchingArray = Array(searchingArray.prefix(middleIndex))
				}
				
			} else {
				currentlySearching = false
			}
		}
		
		return -1
	}
}
