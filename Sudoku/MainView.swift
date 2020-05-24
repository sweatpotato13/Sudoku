//
//  MainScreen.swift
//  Sudoku
//
//  Created by mac on 2020/05/24.
//  Copyright © 2020 CuteWisp. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @State private var show_modal: Bool = false
    
    var body: some View {
        NavigationView {
            Text("MainScreen")
                .navigationBarItems(
                    trailing:
                    Button(action: {
                        self.show_modal = true
                    }) {
                        Image(systemName: "gear")
                            .imageScale(.large)
                    }.sheet(isPresented: self.$show_modal) {
                        SettingView()
                    }
            )
        }
    }
}
