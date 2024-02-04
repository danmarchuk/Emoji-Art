//
//  Extension.swift
//  Emoji Art
//
//  Created by Данік on 04/02/2024.
//

import Foundation

extension String {
    
    // removes any duplicate characters
    // preserves the order of the characters
    var uniqued: String {
        // efficient in small strings
        // don't call in a tight loop
        reduce(into: "") { sofar, element in
            if !sofar.contains(element) {
                sofar.append(element)
            }
        }
    }
}
