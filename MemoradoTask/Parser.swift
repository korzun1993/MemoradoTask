//
//  Parser.swift
//  MemoradoTask
//
//  Created by Vlad Korzun on 24.06.15.
//  Copyright (c) 2015 Korzun Vladyslav. All rights reserved.
//

import UIKit


class Parser: NSObject {
    class func loadDataFromJSON() -> Array<Game>?
    {
        var arrayOfDict = self.loadArrayOfDictFromJSON()
        return arrayOfDict.map{Game.new($0)}
    }
    
    class func loadArrayOfDictFromJSON() -> Array<Dictionary<String,String>>{
        let path = NSBundle.mainBundle().pathForResource("data", ofType: "json")
        let jsonData = NSData(contentsOfFile: path!)
        var jsonResult: Array = NSJSONSerialization.JSONObjectWithData(jsonData!, options: NSJSONReadingOptions.MutableContainers, error: nil) as! Array<Dictionary<String,String>>
        return jsonResult
    }

}
