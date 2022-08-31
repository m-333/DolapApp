//
//  Urunler.swift
//  DolapApp
//
//  Created by melek türüdi on 30.08.2022.
//

import Foundation
class Urunler {
   
    
    var urunId: Int?
    var urunAdi: String?
    var urunFiyat: Double?
    var urunResimAdi: String?
    
    internal init(urunId: Int?, urunAdi: String, urunFiyat: Double, urunResimAdi: String) {
        self.urunId = urunId
        self.urunAdi = urunAdi
        self.urunFiyat = urunFiyat
        self.urunResimAdi = urunResimAdi
        
    }
}


