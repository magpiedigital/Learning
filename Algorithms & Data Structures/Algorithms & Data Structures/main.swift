//
//  main.swift
//  Algorithms & Data Structures
//
//  Created by Hamish Johnson on 2018-04-17.
//  Copyright © 2018 Hamish Johnson. All rights reserved.
//

import Foundation

fizzBuzz(for: 15)

print("linear: \(linearSearch(forSearchValue: 10, in: searchNumbers))")

print("binary: \(binarySearch(forSearchValue: 10, in: searchNumbers))")

print("mostCommon: \(mostCommonItemInArray(array: ["a", "b", "a"]))")

print("factorial: \(factorial(of: 3))")

print("recursive: \(recursiveFactorial(of: 3))")

print("reverse: \(reverseWordsInSentence(sentence: str))")

print("fib: \(fib(for: 1))")

print("fibRecursive: \([0, 1] + fibRecursive(for: 5, first: 0, second: 1))")

var rwBookStack = Stack<String>()
rwBookStack.push("3D Games by Tutorials")
rwBookStack.push("tvOS Apprentice")
rwBookStack.push("iOS Apprentice")
rwBookStack.push("Swift Apprentice")
print(rwBookStack)

let dogBreeds = LinkedList<String>()
dogBreeds.append(value: "Labrador")
dogBreeds.append(value: "Bulldog")
dogBreeds.append(value: "Beagle")
dogBreeds.append(value: "Husky")
print(dogBreeds)

let beverages = TreeNode(value: "beverages")
let hotBeverage = TreeNode(value: "hot")
let coldBeverage = TreeNode(value: "cold")
let tea = TreeNode(value: "tea")
let coffee = TreeNode(value: "coffee")
let cocoa = TreeNode(value: "cocoa")
let blackTea = TreeNode(value: "black")
let greenTea = TreeNode(value: "green")
let chaiTea = TreeNode(value: "chai")
let soda = TreeNode(value: "soda")
let milk = TreeNode(value: "milk")
let gingerAle = TreeNode(value: "ginger ale")
let bitterLemon = TreeNode(value: "bitter lemon")
beverages.add(child: hotBeverage)
beverages.add(child: coldBeverage)
hotBeverage.add(child: tea)
hotBeverage.add(child: coffee)
hotBeverage.add(child: cocoa)
coldBeverage.add(child: soda)
coldBeverage.add(child: milk)
tea.add(child: blackTea)
tea.add(child: greenTea)
tea.add(child: chaiTea)
soda.add(child: gingerAle)
soda.add(child: bitterLemon)

print(beverages)

print(beverages.search(value: "bubbly"))
print(beverages.search(value: "chai"))


let adjacencyList = AdjacencyList<String>()

let singapore = adjacencyList.createVertex(data: "Singapore")
let tokyo = adjacencyList.createVertex(data: "Tokyo")
let hongKong = adjacencyList.createVertex(data: "Hong Kong")
let detroit = adjacencyList.createVertex(data: "Detroit")
let sanFrancisco = adjacencyList.createVertex(data: "San Francisco")
let washingtonDC = adjacencyList.createVertex(data: "Washington DC")
let austinTexas = adjacencyList.createVertex(data: "Austin Texas")
let seattle = adjacencyList.createVertex(data: "Seattle")

adjacencyList.add(.undirected, from: singapore, to: hongKong, weight: 300)
adjacencyList.add(.undirected, from: singapore, to: tokyo, weight: 500)
adjacencyList.add(.undirected, from: hongKong, to: tokyo, weight: 250)
adjacencyList.add(.undirected, from: tokyo, to: detroit, weight: 450)
adjacencyList.add(.undirected, from: tokyo, to: washingtonDC, weight: 300)
adjacencyList.add(.undirected, from: hongKong, to: sanFrancisco, weight: 600)
adjacencyList.add(.undirected, from: detroit, to: austinTexas, weight: 50)
adjacencyList.add(.undirected, from: austinTexas, to: washingtonDC, weight: 292)
adjacencyList.add(.undirected, from: sanFrancisco, to: washingtonDC, weight: 337)
adjacencyList.add(.undirected, from: washingtonDC, to: seattle, weight: 277)
adjacencyList.add(.undirected, from: sanFrancisco, to: seattle, weight: 218)
adjacencyList.add(.undirected, from: austinTexas, to: sanFrancisco, weight: 297)

print(adjacencyList.description)

print(adjacencyList.weight(from: singapore, to: tokyo))
print(adjacencyList.edges(from: sanFrancisco)!.map({ $0.destination }))
