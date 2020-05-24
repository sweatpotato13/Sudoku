//
//  ContentView.swift
//  Sudoku
//
//  Created by mac on 2020/05/24.
//  Copyright © 2020 CuteWisp. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("메인")
            }
            StatisticsView()
                .tabItem {
                    Image(systemName: "chart.bar.fill")
                    Text("통계")
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
