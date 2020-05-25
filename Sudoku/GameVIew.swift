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
struct numberButtonView : View {
    let number: Int
    @ObservedObject var sud: Sudoku
    @Binding var selectedCell: (row: Int, col: Int, group: Int)?
    @Binding var fillNotes: Bool
    
    var imageName: String {
        get {
            switch self.number {
            case 1:
                return "1.square.fill"
            case 2:
                return "2.square.fill"
            case 3:
                return "3.square.fill"
            case 4:
                return "4.square.fill"
            case 5:
                return "5.square.fill"
            case 6:
                return "6.square.fill"
            case 7:
                return "7.square.fill"
            case 8:
                return "8.square.fill"
            case 9:
                return "9.square.fill"
            default:
                return "1.square.fill"
            }
        }
    }
    
    var body : some View {
        Button(action: {
            if let select = self.selectedCell {
                if(self.sud.board[select.row][select.col].isDefault) {
                    //TODO: self.sud.set
                } else {
                    self.sud.setCell(row: select.row, col: select.col, to: self.number)
                }
            }
        }) {
            Image(systemName: self.imageName).resizable().aspectRatio(1, contentMode: .fit)
        }
    }
    
}
