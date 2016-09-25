#!/usr/bin/swift

import Foundation

// https://en.wikipedia.org/wiki/Primality_test
func isPrime(_ n: Int) -> Bool {

  if n < 2 { return false }
  else if n <= 3 { return true }
  else if n % 2 == 0 || n % 3 == 0 { return false }
  else if n != 5 && n % 5 == 0 { return false }
  else if n != 7 && n % 7 == 0 { return false }
  var i = 5

  while i * i <= n {
    if n % i == 0 || n % (i + 2) == 0 { return false }
      i = i + 6
  }

    return true
}

func soe(_ n: Int) -> [Int] {
  if n < 2 { return [] }
  var array: [Int] = []
  for i in 2..<n {
    if isPrime(i) { array.append(i) }
  }
  return array
}

for argument in CommandLine.arguments {
  if let number = Int(argument) {
    print(soe(number))
  }
}