//
//  tablevc.swift
//  carlos
//
//  Created by avula koti on 23/03/20.
//  Copyright © 2020 avula koti. All rights reserved.
//

import UIKit

class tablevc: BaseVC {
    @IBOutlet weak var tblvw: UITableView!
    
    var array = ["1","2","3"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

}

extension tablevc: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblvw.dequeueReusableCell(withIdentifier: "tablecell") as! tablecell
        cell.textLabel?.text = array[indexPath.row]
        cell.textLabel?.highlightedTextColor = UIColor.red
        return cell
    }
    
    
}

class tablecell: UITableViewCell {
    
}
