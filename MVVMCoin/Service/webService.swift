//
//  ws.swift
//  MVVMCoin
//
//  Created by Eren FAIKOGLU on 08.08.2020.
//  Copyright © 2020 Eren FAIKOGLU. All rights reserved.
//

import Foundation

class ws {
    func getData(url: URL, completion: @escaping ([cryptoDataModel]?) -> ()) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil {
                completion(nil)
            } else if let data = data {
                let decoder = JSONDecoder()
                let currencyList = try? decoder.decode([cryptoDataModel].self, from: data)
                if let currencyList = currencyList {
                    completion(currencyList)
                }
            }
        }.resume()
    }
}

