//
//  TabCell.swift
//  
//
//  Created by Vlad Korzun on 24.06.15.
//
//

import UIKit

class TabCell: UICollectionViewCell {
    
    @IBOutlet weak var icon: UIImageView!
    
    var game : Game? = nil{
        didSet{
            self.icon.image = UIImage(named: game?.icon as String!)
        }
    }
    
    var color : UIColor? = nil{
        didSet{
            self.backgroundColor = color
        }
    }
    
    
}
