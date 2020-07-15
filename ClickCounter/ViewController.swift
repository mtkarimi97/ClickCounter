//
//  ViewController.swift
//  ClickCounter
//
//  Created by Administrator on 5/31/20.
//  Copyright © 2020 Walek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    @IBOutlet var label: UILabel!
    var colorChanged = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let button3 = UIButton()
        button3.frame = CGRect(x: 200, y: 350, width: 60, height: 60)
        button3.setTitle("Color", for: .normal)
        button3.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button3)
        
        button3.addTarget(self, action: #selector(ViewController.colorChange), for: UIControl.Event.touchUpInside)
    }

    @IBAction func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    @objc func colorChange() {
        if colorChanged {
            self.view.backgroundColor = UIColor.white
            colorChanged = false
        } else {
            self.view.backgroundColor = UIColor.blue
            colorChanged = true
        }
    }
}

