//
//  ViewController.swift
//  NCMBmemo
//
//  Created by 佐藤紬 on 2021/11/15.
//

import UIKit
import NCMB

class ViewController: UIViewController,UITableViewDataSource {
    
    var memoArray = [String]()
    
    @IBOutlet var memoTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        memoTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return memoArray.count
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        cell.textLabel?.text = memoArray[indexPath.row]
        
        return cell
        
        }
}

