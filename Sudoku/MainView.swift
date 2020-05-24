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
            VStack{
                Spacer()
                Button(action: {
                    print("tapped!")
                }) {
                    HStack {
                        Text("게임 이어하기")
                    }
                    .padding()
                    .frame(minWidth: 180, minHeight: 40)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(40)
                }
                .padding()
                Button(action: {
                    print("tapped!")
                }) {
                    HStack {
                        Text("새 게임")
                    }
                    .padding()
                    .frame(minWidth: 180, minHeight: 40)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(40)
                }
                .padding()
            }
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
