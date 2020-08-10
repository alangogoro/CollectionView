//
//  KyaraDetailViewController.swift
//  CollectionView
//
//  Created by usr on 2020/8/10.
//

import UIKit

class KyaraDetailViewController: UIViewController {
    
    var kyara: Kyara!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = kyara.name
        imageView.image = UIImage(named: kyara.imageName)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
