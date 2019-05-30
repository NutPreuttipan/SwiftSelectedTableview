//
//  ViewController.swift
//  SwiftSelectedTableView
//
//  Created by Preuttipan Janpen on 30/5/2562 BE.
//  Copyright © 2562 Lphant Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableviewList: UITableView!
    
    var SelectedChoice:[Int:Int] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onClickSendData(_ sender: Any) {
        
        let resultVC = self.storyboard?.instantiateViewController(withIdentifier: "resultVC") as! ResultViewController
        resultVC.txt = dataToSend()
        
        self.navigationController?.present(resultVC, animated: true, completion: nil)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row % 2 != 0 {
            let cell = self.tableviewList.dequeueReusableCell(withIdentifier: "cellChoice", for: indexPath) as! TableViewCell
            cell.ChoiceConfigure(indexPath: indexPath.row, selectedChoice: SelectedChoice)
            cell.delegate = self
            return cell
        } else {
            let cell = self.tableviewList.dequeueReusableCell(withIdentifier: "cellLabel", for: indexPath)
            return cell
        }
    }
}

extension ViewController: TableViewDelegate {
    func didSelectedChoice(indexPath: Int, choice: Int) {
        SelectedChoice[indexPath] = choice
    }
}

extension ViewController {
    
    func dataToSend() -> String {
        var newString = ""
        let newData = SelectedChoice.sorted(by: { $0.0 < $1.0 })
        
        for (section, answer) in newData {
            newString = newString + "ข้อที่ \(section+1) ----> ตอบ \(answer)\n"
        }
        return newString
    }
}
