//
//  KyaraCollectionViewController.swift
//  CollectionView
//
//  Created by usr on 2020/8/10.
//

import UIKit

struct PropertyKeys {
    static let cellId = "KyaraCell"
}

// private let reuseIdentifier = "Cell"

class KyaraCollectionViewController: UICollectionViewController {
    
    var kyaras: [Kyara] =
        [Kyara(name: "彼得鹿", imageName: "彼得鹿"),
         Kyara(name: "阿判貓", imageName: "阿判貓"),
         Kyara(name: "仰韶兔", imageName: "仰韶兔"),
         Kyara(name: "小潤松鼠", imageName: "小潤松鼠"),
         Kyara(name: "阿波羅老鷹", imageName: "阿波羅老鷹"),
         Kyara(name: "牛奶糖狗", imageName: "牛奶糖狗"),
         Kyara(name: "艷后貓", imageName: "艷后貓"),
         Kyara(name: "音音鹿", imageName: "音音鹿")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        /* 移除這行程式 ⬇️
         * 因為我們現在要採用 Storyboard 裡設計的 cell
         * 這行程式將變成要另外從程式設計 Cell */
        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        /* sender 是 cell，因此可以轉型成自己定義的 Cell 類別
         * 用 segue.destination 取得 Segue 目的頁面的類別，再指派值過去
         */
        if let cell = sender as? KyaraCollectionViewCell,
           let indexPath = collectionView.indexPath(for: cell),
           let controller = segue.destination as? KyaraDetailViewController {
            
            let kyara = kyaras[indexPath.row]
            controller.kyara = kyara
            
        }
        
    }
    

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
        
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return kyaras.count
        
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PropertyKeys.cellId, for: indexPath) as? KyaraCollectionViewCell
        else { return UICollectionViewCell() }
        
        let kyara = kyaras[indexPath.row]
        cell.imageView.image = UIImage(named: kyara.imageName)
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
