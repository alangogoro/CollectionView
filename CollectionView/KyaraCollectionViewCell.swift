//
//  KyaraCollectionViewCell.swift
//  CollectionView
//
//  Created by usr on 2020/8/10.
//

import UIKit

class KyaraCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    // imageView 寬度100條件的 Outlet
    @IBOutlet weak var widthConstraint: NSLayoutConstraint!
    /* 設一基於螢幕寬度的常數，再於 Cell 生成時呼叫的 func awakeFromNib()
     * 去改變 imageView 的寬度條件 Constraint */
    static let width = floor((UIScreen.main.bounds.width - 2*3) / 4)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        widthConstraint.constant = Self.width
        
    }
    
}
