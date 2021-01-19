//
//  TabBarView.swift
//  CustomTabBar01
//
//  Created by Simec Sys Ltd. on 19/1/21.
//

import SwiftUI

struct TabBarView: View {
    @ObservedObject var tabItemViewModel: TabItemViewModel
    
    var body: some View {
        HStack(spacing: 35) {
            ForEach(tabItemViewModel.tabItems) { tabItem in
                HStack {
                    Image(systemName: tabItem.icon)
                        .font(.system(size: 20))
                    Text(tabItem.isActive ? tabItem.title : "")
                        .fontWeight(.light)
                        .font(.system(size: 14))
                }
                .padding(.horizontal, 15)
                .padding(.vertical, 10)
                .foregroundColor(tabItem.isActive ? tabItem.color : Color.black)
                .background(tabItem.isActive ? tabItem.color.opacity(0.2) : Color.clear)
                .clipShape(Capsule())
                .onTapGesture {
                    tabItemViewModel.choose(tabItem: tabItem)
                }
            }
        }
        .padding(.horizontal)
        .padding(.top, 8)
        .padding(.bottom, 25)
        .frame(width: UIScreen.main.bounds.width)
        .background(Color.white)
        .animation(.default)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(tabItemViewModel: TabItemViewModel())
    }
}
