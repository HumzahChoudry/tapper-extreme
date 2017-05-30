//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Humzah Choudry on 5/28/17.
//  Copyright © 2017 ChowDryApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapsBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onPlayBtnPressed(sender: UIButton!){
        logoImg.isHidden = true
        playBtn.isHidden = true
        
        tapsBtn.isHidden = false
        tapsLbl.isHidden = false
    }
}

