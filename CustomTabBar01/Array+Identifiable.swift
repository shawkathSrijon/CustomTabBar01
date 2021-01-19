//
//  Array+Identifiable.swift
//  CustomTabBar01
//
//  Created by Simec Sys Ltd. on 19/1/21.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
