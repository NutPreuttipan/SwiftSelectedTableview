//
//  ChechBoxTableViewCell.swift
//  SwiftSelectedTableView
//
//  Created by Preuttipan Janpen on 5/6/2562 BE.
//  Copyright © 2562 Lphant Solutions. All rights reserved.
//

import UIKit

protocol ChechBoxTableViewCellDelegate {
    func didSelectCheckBox(indexPath: Int, choice: [Int])
}

class ChechBoxTableViewCell: UITableViewCell {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    
    var delegate: ChechBoxTableViewCellDelegate?
    
    var isCheckButton1 = false
    var isCheckButton2 = false
    var isCheckButton3 = false
    var isCheckButton4 = false
    var isCheckButton5 = false
    var isCheckButton6 = false
    
    var arrCheckBox:[Int] = []
    
    func checkBoxConfigure(indexPath: Int, selectedCheckBox: [Int:[Int]]) {
        button1.tag = indexPath
        button2.tag = indexPath
        button3.tag = indexPath
        button4.tag = indexPath
        button5.tag = indexPath
        button6.tag = indexPath
        
        
        if let choice = selectedCheckBox[indexPath] {
            for (_, choiceSelected) in choice.enumerated() {
                switch choiceSelected {
                case 1:
                    isCheckButton1 = true
                    arrCheckBox = arrCheckBox.filter { $0 != 1 }
                    arrCheckBox.append(1)
                    button1.backgroundColor = UIColor.yellow
                case 2:
                    isCheckButton2 = true
                    arrCheckBox = arrCheckBox.filter { $0 != 2 }
                    arrCheckBox.append(2)
                    button2.backgroundColor = UIColor.yellow
                case 3:
                    isCheckButton3 = true
                    arrCheckBox = arrCheckBox.filter { $0 != 3 }
                    arrCheckBox.append(3)
                    button3.backgroundColor = UIColor.yellow
                case 4:
                    isCheckButton4 = true
                    button4.backgroundColor = UIColor.yellow
                case 5:
                    isCheckButton5 = true
                    button5.backgroundColor = UIColor.yellow
                case 6:
                    isCheckButton6 = true
                    button6.backgroundColor = UIColor.yellow
                default:
                    break;
                }
            }
        } else {
            button1.backgroundColor = UIColor.white
            button2.backgroundColor = UIColor.white
            button3.backgroundColor = UIColor.white
            button4.backgroundColor = UIColor.white
            button5.backgroundColor = UIColor.white
            button6.backgroundColor = UIColor.white
        }
        
    }
    
    @IBAction func onClickButton(_ sender: UIButton) {
        switch sender {
        case button1:
            print("button1 :tag =>\(button1.tag)")
            if !isCheckButton1 {
                isCheckButton1 = !isCheckButton1
                arrCheckBox.append(1)
                button1.backgroundColor = UIColor.yellow
            } else {
                isCheckButton1 = !isCheckButton1
                arrCheckBox = arrCheckBox.filter { $0 != 1 }
                button1.backgroundColor = UIColor.white
            }
            print("CCC \(arrCheckBox)")
            delegate?.didSelectCheckBox(indexPath: button1.tag, choice: arrCheckBox)
        case button2:
            print("button2 :tag =>\(button2.tag)")
            if !isCheckButton2 {
                isCheckButton2 = !isCheckButton2
                arrCheckBox.append(2)
                button2.backgroundColor = UIColor.yellow
            } else {
                isCheckButton2 = !isCheckButton2
                arrCheckBox = arrCheckBox.filter { $0 != 2 }
                button2.backgroundColor = UIColor.white
            }
            print("CCC \(arrCheckBox)")
            delegate?.didSelectCheckBox(indexPath: button2.tag, choice: arrCheckBox)
        case button3:
            print("button3 :tag =>\(button3.tag)")
            if !isCheckButton3 {
                isCheckButton3 = !isCheckButton3
                arrCheckBox.append(3)
                button3.backgroundColor = UIColor.yellow
            } else {
                isCheckButton3 = !isCheckButton3
                arrCheckBox = arrCheckBox.filter { $0 != 3 }
                button3.backgroundColor = UIColor.white
            }
            print("CCC \(arrCheckBox)")
            delegate?.didSelectCheckBox(indexPath: button3.tag, choice: arrCheckBox)
//        case button4:
//
//            if !isCheckButton4 {
//                isCheckButton4 = !isCheckButton4
//                arrCheckBox.append(4)
//                button4.backgroundColor = UIColor.yellow
//            } else {
//                isCheckButton4 = !isCheckButton4
//                arrCheckBox = arrCheckBox.filter { $0 != 4 }
//                button4.backgroundColor = UIColor.white
//            }
//
//            delegate?.didSelectCheckBox(indexPath: button4.tag, choice: arrCheckBox)
//        case button5:
//
//            if !isCheckButton5 {
//                isCheckButton5 = !isCheckButton5
//                arrCheckBox.append(5)
//                button5.backgroundColor = UIColor.yellow
//            } else {
//                isCheckButton5 = !isCheckButton5
//                arrCheckBox = arrCheckBox.filter { $0 != 5 }
//                button5.backgroundColor = UIColor.white
//            }
//
//            delegate?.didSelectCheckBox(indexPath: button5.tag, choice: arrCheckBox)
//        case button6:
//
//            if !isCheckButton6 {
//                isCheckButton6 = !isCheckButton6
//                arrCheckBox.append(6)
//                button6.backgroundColor = UIColor.yellow
//            } else {
//                isCheckButton6 = !isCheckButton6
//                arrCheckBox = arrCheckBox.filter { $0 != 6 }
//                button6.backgroundColor = UIColor.white
//            }
//
//            delegate?.didSelectCheckBox(indexPath: button6.tag, choice: arrCheckBox)
        default:
            break;
        }
    }
}
