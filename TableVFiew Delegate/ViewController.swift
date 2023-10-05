//
//  ViewController.swift
//  TableVFiew Delegate
//
//  Created by yapapp on 10/08/23.
//

import UIKit

class ViewController: UIViewController,text {
   

    
    var arrName = [String]()
    
    
    @IBOutlet weak var nameLbl: UITableView!
    @IBOutlet weak var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.delegate = self
        myTable.dataSource = self
        
        for i in 1...20{
            // arrName.append("\(i)")
            arrName.append("\(i*4)")
            
        }
    }
    
    func nameText(name: String) {
       // self.textLabel?.text = nameLbl
        print(name)
    }
    
    
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arrName[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")as! SecondViewController
//        let list = arrName[indexPath.row]
//                print("SELECTED ROW \(list)")
        vc.textFeild = arrName[indexPath.row]
        vc.delegate = self
//        vc.didChange = { newValue in
//            self.arrName[indexPath.row] = newValue
//            tableView.reloadData()
//        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}



