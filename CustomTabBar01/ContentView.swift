//
//  ContentView.swift
//  CustomTabBar01
//
//  Created by Simec Sys Ltd. on 19/1/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var tabItemViewModel = TabItemViewModel()

    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                if tabItemViewModel.activeTab == 0 {
                    Color.red.opacity(0.7).edgesIgnoringSafeArea(.all)
                } else if tabItemViewModel.activeTab == 1 {
                    Color.purple.opacity(0.7).edgesIgnoringSafeArea(.all)
                } else {
                    Color.orange.opacity(0.7).edgesIgnoringSafeArea(.all)
                }
            }
            TabBarView(tabItemViewModel: tabItemViewModel)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
