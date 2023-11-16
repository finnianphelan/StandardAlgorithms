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

    let array1 = mergeSort(Array((inputArray[0..<inputArray.count/2])))
    let array2 = mergeSort(Array(inputArray[inputArray.count/2..<inputArray.count]))
    sortedArray = merge(array1, array2)

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

}
