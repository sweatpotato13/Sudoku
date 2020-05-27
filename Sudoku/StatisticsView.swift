//
//  File.swift
//  Sudoku
//
//  Created by mac on 2020/05/24.
//  Copyright © 2020 CuteWisp. All rights reserved.
//

import SwiftUI

struct StatisticsView: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(Color.red)
                    .cornerRadius(8)
                    .frame(height: 100)
                    .padding(.horizontal)
                HStack{
                    Image(systemName: "rectangle.split.3x3")
                        .font(.title)
                    Text("   시작한 게임  :  ")
                        .font(.headline)
                        .foregroundColor(.white)
                    Text(String(userSettings.totalGames))
                        .font(.headline)
                        .foregroundColor(.white)
                }
            }
            
            ZStack {
                Rectangle()
                    .fill(Color.red)
                    .cornerRadius(8)
                    .frame(height: 100)
                    .padding(.horizontal)
                HStack{
                    Image(systemName: "hand.thumbsup.fill")
                        .font(.title)
                    Text("   승리한 게임  :  ")
                        .font(.headline)
                        .foregroundColor(.white)
                    Text(String(userSettings.Wins))
                        .font(.headline)
                        .foregroundColor(.white)
                }
            }
            
            ZStack {
                Rectangle()
                    .fill(Color.red)
                    .cornerRadius(8)
                    .frame(height: 100)
                    .padding(.horizontal)
                HStack{
                    Image(systemName: "hand.thumbsdown.fill")
                        .font(.title)
                    Text("   패배한 게임  :  ")
                        .font(.headline)
                        .foregroundColor(.white)
                    Text(String(userSettings.Loses))
                        .font(.headline)
                        .foregroundColor(.white)
                }
            }
            
            Spacer()

        }
    }
}
