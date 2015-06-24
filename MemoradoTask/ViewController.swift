//
//  ViewController.swift
//  MemoradoTask
//
//  Created by Vlad Korzun on 24.06.15.
//  Copyright (c) 2015 Korzun Vladyslav. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
   
    @IBOutlet weak var gameName: UILabel!
    
    @IBOutlet weak var gameDescription: UILabel!
    @IBOutlet weak var tabsCollectionView: UICollectionView!
    var arrayOfGames : Array<Game>? = nil
    let colorManager = ColorsManager.new()
    var selectedItem = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.arrayOfGames = Parser.loadDataFromJSON()
        self.didSelectGame(self.arrayOfGames!.first!)
        self.view.backgroundColor = self.colorManager.getColorForIndex(0)
    }
    
    func didSelectGame(game : Game)
    {
        self.gameName.text = game.name
        self.gameDescription.text = game.gameDescription
        UIView.animateWithDuration(0.15, animations: { () -> Void in
            self.setLabelsAlpha(1)
        })
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.arrayOfGames!.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! TabCell
        cell.game = self.arrayOfGames![indexPath.item]
        cell.color = self.colorManager.getColorForIndex(indexPath.item)
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        if(self.selectedItem == indexPath.row){return}
        self.selectedItem = indexPath.row
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            self.view.backgroundColor = self.colorManager.getColorForIndex(indexPath.row)
        })
        UIView.animateWithDuration(0.15, animations: { () -> Void in
            self.setLabelsAlpha(0)
        }) { (isFinished) -> Void in
            if(isFinished){
                self.didSelectGame(self.arrayOfGames![indexPath.row])
            }
        }
    }
    
    func setLabelsAlpha(alpha : Float)
    {
        self.gameName.alpha = CGFloat(alpha)
        self.gameDescription.alpha = CGFloat(alpha)
    }
    
   }

