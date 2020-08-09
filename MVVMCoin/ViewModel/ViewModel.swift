//
//  mod.swift
//  MVVMCoin
//
//  Created by Eren FAIKOGLU on 08.08.2020.
//  Copyright © 2020 Eren FAIKOGLU. All rights reserved.
//

import Foundation


struct listModel {
    let listModel : [cryptoDataModel]
    func numberOfRows() -> Int {
        return self.listModel.count
    }
    func atIndex(_ index: Int) -> viewModel{
        let crypto = self.listModel[index]
        return viewModel(crypto)
    }
}

struct viewModel {
    let model : cryptoDataModel
    init(_ crypto: cryptoDataModel){
        self.model = crypto
    }
        
    var id : String {
        return self.model.id
    }
    var symbol : String {
        return self.model.symbol
    }
    var name : String {
        return self.model.name
    }
    var image : String {
        return self.model.image
    }
    var price : Double {
        return self.model.price
    }
    var rank : Int {
        return self.model.rank
    }
    var marketcap : Int64 {
        return self.model.marketcap
    }
    var price_24h_percentage_change : Double {
        return self.model.price_24h_percentage_change
    }
    var price_7d_percentage_change : Double {
        return self.model.price_7d_percentage_change
    }
    var last_update : String {
        return self.model.last_update
    }
}
