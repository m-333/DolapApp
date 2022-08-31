//
//  UrunCollectionViewCell.swift
//  DolapApp
//
//  Created by melek türüdi on 30.08.2022.
//

import UIKit
protocol HucreProtocol {
    //func tiklandi( indexPath: IndexPath)
}

class UrunCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var urunFiyatLabel: UILabel!
    @IBOutlet weak var urunKategoriLabel: UILabel!
    @IBOutlet weak var urunResimCollectionView: UIImageView!
    
    var hucreProtocol:HucreProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
