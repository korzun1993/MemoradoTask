//
//  ColorsManager.swift
//  MemoradoTask
//
//  Created by Vlad Korzun on 24.06.15.
//  Copyright (c) 2015 Korzun Vladyslav. All rights reserved.
//

import UIKit

class ColorsManager: NSObject {
    var colorNames : Array <String> = ["#d35f5f",
                                        "#e47857",
                                        "#f59f47",
                                        "#ffbb49",
                                        "#c8cc54",
                                        "#90c066",
                                        "#678b69",
                                        "#3baea1",
                                        "#47c0cd",
                                        "#549fea",
                                        "#7b88dc",
                                        "#8a6ecd",
                                        "#b54ee1"
    ]
    
    func getColorForIndex(index : Int) -> UIColor
    {
        var colorID = index % self.colorNames.count
        return UIColor(rgba: colorNames[colorID])
    }
}
