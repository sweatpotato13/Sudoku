//
//  InfomationView.swift
//  Sudoku
//
//  Created by mac on 2020/05/24.
//  Copyright © 2020 CuteWisp. All rights reserved.
//

import SwiftUI

struct InfomationView: View {
    init() {
        UITableView.appearance().tableFooterView = UIView()
        UITableViewCell.appearance().backgroundColor = .darkGray
        UITableView.appearance().separatorStyle = .none
    }

    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        List {
            ZStack {
                HStack{
                    Image("logo")
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                    VStack{
                        Text("간단한 스도쿠")
                            .font(.headline)
                            .foregroundColor(.white)
                        Text("")
                        Text("  Made By sweatpotato13")
                            .font(.headline)
                            .foregroundColor(.gray)
                    }
                }
            }
            ZStack {
                HStack{
                    Image("github")
                        .resizable()
                        .frame(width: 50.0, height: 50.0)
                        .padding(.horizontal)
                    Text("개발자 Github 바로가기")
                        .font(.headline)
                        .foregroundColor(.white)
                        .onTapGesture() {
                        UIApplication.shared.open(URL(string: "https://github.com/sweatpotato13")!)
                    }
                }
            }
        }
    }
}
