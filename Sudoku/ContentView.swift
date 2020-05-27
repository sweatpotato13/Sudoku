//
//  ContentView.swift
//  Sudoku
//
//  Created by mac on 2020/05/24.
//  Copyright © 2020 CuteWisp. All rights reserved.
//

import SwiftUI
import BottomBar_SwiftUI

let items: [BottomBarItem] = [
    BottomBarItem(icon: "house.fill", title: "메인", color: .purple),
    BottomBarItem(icon: "chart.bar.fill", title: "통계", color: .pink),
    BottomBarItem(icon: "questionmark.circle.fill", title: "정보", color: .blue)
]

var userSettings = UserSettings()
var mainsud: Sudoku = Sudoku()

struct BasicView: View {
    let item: BottomBarItem

    var detailText: String {
    "\(item.title) Detail"
    }

@ViewBuilder
var body: some View {
    if item.title == "메인" {
        MainView()
    }
    else if item.title == "통계" {
        StatisticsView()
    }
    else {
        InfomationView()
    }
    }
}

struct ContentView : View {
    @State private var selectedIndex: Int = 0

    var selectedItem: BottomBarItem {
        items[selectedIndex]
    }

    var body: some View {
        NavigationView {
            VStack {
                BasicView(item: selectedItem)
                    .navigationBarTitle(Text(selectedItem.title))
                BottomBar(selectedIndex: $selectedIndex, items: items)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

