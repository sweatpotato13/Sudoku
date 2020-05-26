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

            
    init() {
        self.hasExistGame = UserDefaults.standard.object(forKey: "hasExistGame") as? Bool ?? false
    }
}
