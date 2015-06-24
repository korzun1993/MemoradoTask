//
//  Game.swift
//  MemoradoTask
//
//  Created by Vlad Korzun on 24.06.15.
//  Copyright (c) 2015 Korzun Vladyslav. All rights reserved.
//

import UIKit

class Game: NSObject {
    var name : String = ""
    var gameDescription : String = ""
    var icon : String = ""
    class func new(dict : Dictionary<String ,String>) -> Game
    {
        var newGame = Game.new()
        newGame.name = dict["name"]!
        newGame.gameDescription = dict["description"]!
        newGame.icon = dict["icon"]!
        return newGame
    }
}
