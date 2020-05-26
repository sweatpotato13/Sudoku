//
//  SettingView.swift
//  Sudoku
//
//  Created by mac on 2020/05/24.
//  Copyright © 2020 CuteWisp. All rights reserved.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            Text("SettingView")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        // TODO : 저장해
                    }) {
                        Text("저장")
                    }
            )
        }
    }
}
