//
//  TableViewCell.swift
//  SwiftSelectedTableView
//
//  Created by Preuttipan Janpen on 30/5/2562 BE.
//  Copyright © 2562 Lphant Solutions. All rights reserved.
//

import UIKit

protocol TableViewDelegate {
    func didSelectedChoice(indexPath:Int, choice:Int)
}

class TableViewCell: UITableViewCell {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    var delegate: TableViewDelegate?
    
    func ChoiceConfigure(indexPath:Int, selectedChoice:[Int:Int]) {
        button1.tag = indexPath
        button2.tag = indexPath
        
        if let choice = selectedChoice[indexPath] {
            if choice == 1 {
                button1.backgroundColor = UIColor.blue
                button1.tintColor = UIColor.white
                
                button2.backgroundColor = UIColor.white
                button2.tintColor = UIColor.blue
            } else {
                button1.backgroundColor = UIColor.white
                button1.tintColor = UIColor.blue
                
                button2.backgroundColor = UIColor.blue
                button2.tintColor = UIColor.white
            }
        } else {
            button1.backgroundColor = UIColor.white
            button1.tintColor = UIColor.blue
            
            button2.backgroundColor = UIColor.white
            button2.tintColor = UIColor.blue
        }
    }
    
    @IBAction func onClickSelectChoice(_ sender: Any) {
        
        switch sender as! UIButton {
        case button1:
            button1.backgroundColor = UIColor.blue
            button1.tintColor = UIColor.white
            
            button2.backgroundColor = UIColor.white
            button2.tintColor = UIColor.blue
            delegate?.didSelectedChoice(indexPath: button1.tag, choice: 1)
            
        case button2:
            button1.backgroundColor = UIColor.white
            button1.tintColor = UIColor.blue
            
            button2.backgroundColor = UIColor.blue
            button2.tintColor = UIColor.white
            delegate?.didSelectedChoice(indexPath: button2.tag, choice: 2)
        default:
            break;
        }
    }
}


