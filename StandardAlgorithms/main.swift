//
//  main.swift
//  StandardAlgorithms
//
//  Created by Finnian Phelan on 25/11/2023.
//

import Foundation

let sorting = Sorting()

// Bubble sort
print("""
Bubble Sort:
	- Goes through the list a pair at a time, comparing and swapping their places in the list if needed
	- No preconditions
	- Space complexity: O(1)
	- Time complexity:
		+ Best case = O(n^2)
		+ Average case = O(n^2)
		+ Worst case = O(n^2)
	- Example:
		+ Input: [5, 3, 4, 1, 2]
""")
print("        + Output: \(sorting.bubbleSort([1, 2, 3, 4, 5]))\n")

// Merge sort
print("""
Merge Sort:
	- Breaks the list down until it is in a list of length one, and then compares and merges the lists progressively until the whole list is merged (and sorted)
	- No preconditions
	- Space complexity: O(n)
	- Time complexity:
		+ Best case = O(logn)
		+ Average case = O(logn)
		+ Worst case = O(logn)
	- Example:
		+ Input: [5, 3, 4, 1, 2]
""")
print("        + Output: \(sorting.mergeSort([1, 2, 3, 4, 5]))\n")
