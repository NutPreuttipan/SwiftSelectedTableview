

//
//  ResultViewController.swift
//  SwiftSelectedTableView
//
//  Created by Preuttipan Janpen on 30/5/2562 BE.
//  Copyright © 2562 Lphant Solutions. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var textViewResult: UITextView!
    
    var txt = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        textViewResult.text = txt
    }
}
