//
//  MainView.swift
//  Sudoku
//
//  Created by mac on 2020/05/24.
//  Copyright © 2020 CuteWisp. All rights reserved.
//

import SwiftUI
import BottomBar_SwiftUI
import Foundation
import Combine

struct MainView: View {
    @State private var showingActionSheet = false
    @State private var diff = Difficulty.Easy

    var body: some View {
        VStack {
            Spacer()
            Image("logo")
                .resizable()
                .scaledToFit()
                .onTapGesture {
                    self.showingActionSheet = true
                }
                .actionSheet(isPresented: $showingActionSheet) {
                    ActionSheet(title: Text("Select Difficulty"), message: Text("난이도를 선택하세요"), buttons: [
                        .default(Text("Easy")) { self.diff = .Easy },
                        .default(Text("Medium")) { self.diff = .Medium },
                        .default(Text("Hard")) { self.diff = .Hard },
                        .cancel()
                    ])
                }
            Spacer()
            if userSettings.hasExistGame {
                continueGameButton
            }
            newGameButton
        }
    }
    
    var newGameButton: some View {
        NavigationLink(destination: GameView(item: true)) {
                ZStack {
                    Rectangle()
                        .fill(Color.gray)
                        .cornerRadius(8)
                        .frame(height: 52)
                        .padding(.horizontal)

                    Text("새 게임")
                        .font(.headline)
                        .foregroundColor(.white)
                
                }
            }.simultaneousGesture(TapGesture().onEnded{
                mainsud.reset(diff: self.diff)
                userSettings.totalGames += 1
                if userSettings.hasExistGame{
                    userSettings.Loses += 1
                }
                userSettings.hasExistGame = true
        })
    }
        
    var continueGameButton: some View {
        NavigationLink(destination: GameView(item: false)) {
            ZStack {
                Rectangle()
                    .fill(Color.purple)
                    .cornerRadius(8)
                    .frame(height: 52)
                    .padding(.horizontal)

                Text("게임 이어하기")
                    .font(.headline)
                    .foregroundColor(.white)
            }
        }.simultaneousGesture(TapGesture().onEnded{

        })
    }
    
}
