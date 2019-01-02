//
//  ViewController.swift
//  app-swoosh
//
//  Created by Joseph Bielas on 12/20/18.
//  Copyright © 2018 DevMettle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        swoosh.frame = CGRect(x: view.frame.size.width / 2 - swoosh.frame.size.width / 2, y: 50, width: swoosh.frame.size.width, height: swoosh.frame.size.height)
        
        bgimg.frame = view.frame
    }

    @IBOutlet weak var swoosh: UIImageView!
    
    @IBOutlet weak var bgimg: UIImageView!
    
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue){
        
    }
}

