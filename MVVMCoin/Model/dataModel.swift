//
//  model.swift
//  MVVMCoin
//
//  Created by Eren FAIKOGLU on 08.08.2020.
//  Copyright © 2020 Eren FAIKOGLU. All rights reserved.
//

import Foundation


struct cryptoDataModel : Decodable {
    let id : String
    let symbol : String
    let name : String
    let image : String
    let price : Double
    let rank : Int
    let marketcap : Int64
    let price_24h_percentage_change : Double
    let price_7d_percentage_change : Double
    let last_update : String
}

