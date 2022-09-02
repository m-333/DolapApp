//
//  ViewController.swift
//  DolapApp
//
//  Created by melek türüdi on 28.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var urunlerCollectionView: UICollectionView!
    
    var urunlerListesi = [Urunler]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "dolap"
        
        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = UIColor(named: "anaRenk")
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "FontColor")]
        navigationController?.navigationBar.barStyle = .black
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        
        let u1 = Urunler(urunId: 1, urunAdi: "Macbook Pro 14 ", urunFiyat: 43999.0, urunResimAdi: "apple")
        let u2 = Urunler(urunId: 2, urunAdi: "Rayban Club Master  ", urunFiyat: 800, urunResimAdi: "ray-ban")
        let u3 = Urunler(urunId: 3, urunAdi: "Sony ZX",urunFiyat: 43999.0, urunResimAdi: "kulaklik0" )
        let u4 = Urunler(urunId: 4, urunAdi: "Gio Armani Krem ",  urunFiyat: 500.0, urunResimAdi: "krem")
        let u5 = Urunler(urunId: 5, urunAdi: "Casio X Series", urunFiyat: 1799.0,urunResimAdi: "download")
        let u6 = Urunler(urunId: 6, urunAdi: "Dyson V8 ", urunFiyat: 8999.0, urunResimAdi: "supurge0")
        let u7 = Urunler(urunId: 7, urunAdi: "Iphone 13 pro", urunFiyat: 23999.0, urunResimAdi: "telefon0")
        
        urunlerListesi.append(u1)
        urunlerListesi.append(u2)
        urunlerListesi.append(u3)
        urunlerListesi.append(u4)
        urunlerListesi.append(u5)
        urunlerListesi.append(u6)
        urunlerListesi.append(u7)
        
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 10
        let genislik = urunlerCollectionView.frame.size.width
        let itemGenislik = (genislik-30)/2
        tasarim.itemSize = CGSize(width: itemGenislik, height: itemGenislik*1.7)
        urunlerCollectionView.collectionViewLayout = tasarim
        urunlerCollectionView.collectionViewLayout = tasarim
        
        urunlerCollectionView.delegate = self
        urunlerCollectionView.dataSource = self
        
        
    }

}


extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return urunlerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let urun = urunlerListesi[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "urunHucre", for: indexPath) as! UrunCollectionViewCell
        
        cell.urunResimCollectionView.image = UIImage(named: urun.urunResimAdi!)
        cell.urunKategoriLabel.text = urun.urunAdi
        cell.urunFiyatLabel.text = "\(urun.urunFiyat!) TL"
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.3
        cell.layer.cornerRadius = 10.0
        
        //cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        return cell
    }
    
   
}


