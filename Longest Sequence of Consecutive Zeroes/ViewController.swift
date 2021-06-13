//
//  ViewController.swift
//  Longest Sequence of Consecutive Zeroes
//
//  Created by Daniel Washington Ignacio on 13/06/21.
//

/*
 Write a function that returns the longest sequence of consecutive zeroes in a binary string.

 Examples

 longestZero("01100001011000") ➞ "0000"

 longestZero("100100100") ➞ "00"

 longestZero("11111") ➞ ""
 Notes

 If no zeroes exist in the input, return an empty string.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.longestZero("01100001011000"))
        print(self.longestZero("100100100"))
        print(self.longestZero("11111"))
    }
    
    func longestZero(_ str: String) -> String {
        var count: Int = 0
        var countAux: Int = 0
        var arr: [String] = []
        for n in str {
            if n == "0"{
                count = count + 1
            }else{
                if countAux <= count {
                    countAux = count
                }
                count = 0
            }
        }
        for n in 0..<countAux{
            arr.append("0")
        }
        return arr.joined()
    }


}

