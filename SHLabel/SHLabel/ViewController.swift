//
//  ViewController.swift
//  SHLabel
//
//  Created by suhengxian on 2022/2/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let shlabel = SHLabel.init()
        shlabel.text = "hello world"
        shlabel.backgroundColor = UIColor.red
        shlabel.frame = CGRect.init(x: 0, y: 0, width: 100, height: 100)
        shlabel.textInsets = UIEdgeInsets.init(top: 40, left: 20, bottom: 0, right: 0)
        self.view.addSubview(shlabel)
        
    }


}

