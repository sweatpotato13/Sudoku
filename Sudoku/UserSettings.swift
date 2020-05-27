//
//  UserDefault.swift
//  Sudoku
//
//  Created by mac on 2020/05/26.
//  Copyright © 2020 CuteWisp. All rights reserved.
//

import Foundation
import Combine

class UserSettings: ObservableObject {
    @Published var hasExistGame: Bool {
        didSet {
            UserDefaults.standard.set(hasExistGame, forKey: "hasExistGame")
        }
    }
    @Published var totalGames: Int {
        didSet {
            UserDefaults.standard.set(totalGames, forKey: "totalGames")
        }
    }
    @Published var Wins: Int {
        didSet {
            UserDefaults.standard.set(Wins, forKey: "Wins")
        }
    }
    @Published var Loses: Int {
        didSet {
            UserDefaults.standard.set(Loses, forKey: "Loses")
        }
    }
    @Published var Winrate: Int {
        didSet {
            UserDefaults.standard.set(Loses, forKey: "Winrate")
        }
    }


    init() {
        self.hasExistGame = UserDefaults.standard.object(forKey: "hasExistGame") as? Bool ?? false
        self.totalGames = UserDefaults.standard.object(forKey: "totalGames") as? Int ?? 0
        self.Wins = UserDefaults.standard.object(forKey: "Wins") as? Int ?? 0
        self.Loses = UserDefaults.standard.object(forKey: "Loses") as? Int ?? 0
        self.Winrate = UserDefaults.standard.object(forKey: "Winrate") as? Int ?? 0
    }
}
