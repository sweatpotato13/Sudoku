//
//  GameVIew.swift
//  Sudoku
//
//  Created by mac on 2020/05/25.
//  Copyright © 2020 CuteWisp. All rights reserved.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var sud: Sudoku = Sudoku()
    @State var selectedCell: (row: Int, col: Int, group: Int)? = nil
    @State var fillNotes: Bool = false

    var body: some View {
        VStack(spacing: 10) {
            SudokuView(sud: sud, selectedCell: $selectedCell)
            
            HStack {
                numberButtonView(number: 1, sud: self.sud, selectedCell: $selectedCell, fillNotes: $fillNotes)
                numberButtonView(number: 2, sud: self.sud, selectedCell: $selectedCell, fillNotes: $fillNotes)
                numberButtonView(number: 3, sud: self.sud, selectedCell: $selectedCell, fillNotes: $fillNotes)
                numberButtonView(number: 4, sud: self.sud, selectedCell: $selectedCell, fillNotes: $fillNotes)
                numberButtonView(number: 5, sud: self.sud, selectedCell: $selectedCell, fillNotes: $fillNotes)
                numberButtonView(number: 6, sud: self.sud, selectedCell: $selectedCell, fillNotes: $fillNotes)
                numberButtonView(number: 7, sud: self.sud, selectedCell: $selectedCell, fillNotes: $fillNotes)
                numberButtonView(number: 8, sud: self.sud, selectedCell: $selectedCell, fillNotes: $fillNotes)
                numberButtonView(number: 9, sud: self.sud, selectedCell: $selectedCell, fillNotes: $fillNotes)
            }.padding(.leading).padding(.trailing)
        }
    }
}
