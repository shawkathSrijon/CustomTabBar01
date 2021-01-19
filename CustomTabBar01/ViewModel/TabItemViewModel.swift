//
//  TabItemViewModel.swift
//  CustomTabBar01
//
//  Created by Simec Sys Ltd. on 19/1/21.
//

import Foundation
import SwiftUI

class TabItemViewModel: ObservableObject {
    @Published var model = TabItemModel()
    
    // MARK:- Access to Model
    
    var tabItems: [TabItemModel.TabItem] {
        model.tabItems
    }
    var activeTab: Int {
        model.activeTab
    }
    //MARK:- User Intent(s)
    
    func choose(tabItem: TabItemModel.TabItem) {
        model.choose(tabItem: tabItem)
    }
}
