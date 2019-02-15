//
//  ViewController.swift
//  Project 1
//
//  Created by nathan Axt on 2/14/19.
//  Copyright © 2019 Nathan Axt. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let list = ["Dwarf", "Gnome", "Halfling", "Elf", "Dragonborn", "Human", "Tebaxi", "Goliath"]

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(list.count)
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return(cell)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var WhatAnAppLabel: UILabel!
    
    @IBAction func PressMeButton(_ sender: Any) {
        view.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
        WhatAnAppLabel.text = "Nat20!"
        WhatAnAppLabel.font = UIFont.systemFont(ofSize: 30)
        WhatAnAppLabel.textAlignment = .left
    }
    
}

