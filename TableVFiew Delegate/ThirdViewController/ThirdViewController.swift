//
//  ThirdViewController.swift
//  TableVFiew Delegate
//
//  Created by yapapp on 10/08/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var nameArray = [String]()
    
    @IBOutlet weak var myTable: UITableView!
    override func viewDidLoad() {
            myTable.delegate = self
            myTable.dataSource = self
        super.viewDidLoad()
        for i in 1...30{
            //nameArray.append("\(i)")
            nameArray.append("\(i*4)")
        }
        print(nameArray)
    }
    
}
extension ThirdViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = nameArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "FouthViewController")as! FouthViewController
        vc.text1 = nameArray[indexPath.row]
        // use for value back to the first view controller
        vc.newOne = {newValue in
            self.nameArray[indexPath.row] = newValue
            self.myTable.reloadData()
        }
        self.navigationController?.pushViewController(vc, animated: true)
    
    }
    
    
}
