//
//  ViewController.swift
//  MVVMCoin
//
//  Created by Eren FAIKOGLU on 08.08.2020.
//  Copyright © 2020 Eren FAIKOGLU. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import SDWebImage

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    private var listmodelVC : listModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
        getDataVC()
    }
    
    private func getDataVC() {
        let host = URL(string: "https://static.coinpaper.io/api/coins.json")!
        ws().getData(url: host) { list in
            if let list = list {
                self.listmodelVC = listModel(listModel: list)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let listmodel = self.listmodelVC.atIndex(indexPath.row)
        cell.coinName.text = listmodel.name
        cell.coinPrice.text = "\(listmodel.price)$"
        cell.coinImg.sd_setImage(with: URL(string: listmodel.image))
        cell.last24h.text = "\(Int(listmodel.price_24h_percentage_change))%"
        cell.rank.text = "\(listmodel.rank)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listmodelVC == nil ? 0 : self.listmodelVC.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
}

