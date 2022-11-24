//
//  ViewController.swift
//  secondToDoList
//
//  Created by ddukk15 on 23/11/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    var logic = modalClass()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return logic.list.count    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let allCell = myTableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        allCell.textLabel?.text = logic.list[indexPath.row].lis
        return allCell
    }
    
   
    
    @IBOutlet weak var myTextview: UITextField!
    @IBOutlet weak var myTableview: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTableview.delegate = self
        myTableview.dataSource = self
    }
     
    @IBAction func addData(_ sender: UIButton) {
 guard let  newData = myTextview.text
                else
        {
          return
        }
        logic.list.append(File(lis: newData))
        myTableview.reloadData()
    }
}

