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
    @ObservedObject var sud: Sudoku = Sudoku()
    @State var selectedCell: (row: Int, col: Int, group: Int)? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: GameView()) {
                        ContinueGameView()
                    }
                .padding()
                NavigationLink(destination: GameView()) {
                        NewGameButtonView()
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

struct ContinueGameView: View {
    var body: some View {
        Text("게임 이어하기")
        .padding()
        .frame(minWidth: 180, minHeight: 40)
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(40)
    }
}

struct NewGameButtonView: View {
    var body: some View {
        Text("새 게임")
        .padding()
        .frame(minWidth: 180, minHeight: 40)
        .foregroundColor(.white)
        .background(Color.gray)
        .cornerRadius(40)
    }
}
