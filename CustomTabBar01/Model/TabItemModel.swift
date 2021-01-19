//
//  TabItemModel.swift
//  CustomTabBar01
//
//  Created by Simec Sys Ltd. on 19/1/21.
//

import Foundation
import SwiftUI

struct TabItemModel {
    private(set) var tabItems: [TabItem] = [
        TabItem(id: 0, title: "Home", icon: "house.fill", color: Color.green, isActive: true),
        TabItem(id: 1, title: "Profile", icon: "person.fill", color: Color.orange, isActive: false),
        TabItem(id: 2, title: "Settings", icon: "gear", color: Color.blue, isActive: false)
    ]
    private(set) var activeTab: Int = 0
    
    mutating func choose(tabItem: TabItem) {
        if let index = tabItems.firstIndex(matching: tabItem) {
            for i in 0..<tabItems.count {
                if tabItems[i].id == tabItems[index].id {
                    tabItems[i].isActive = true
                    activeTab = tabItems[i].id
                } else {
                    tabItems[i].isActive = false
                }
            }
        }
    }
    
    struct TabItem: Identifiable {
        var id: Int
        var title: String
        var icon: String
        var color: Color
        var isActive: Bool
    }
}

