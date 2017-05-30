//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Humzah Choudry on 5/28/17.
//  Copyright © 2017 ChowDryApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Properties
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapsBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    
    @IBAction func onPlayBtnPressed(sender: UIButton!){
   
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != ""{
            logoImg.isHidden = true
            playBtn.isHidden = true
            howManyTapsTxt.isHidden = true
            
            tapsBtn.isHidden = false
            tapsLbl.isHidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLbl()
            
            if isGameOver(){
                
            }
        }
    }
    
    @IBAction func onCoinTapped(sender: UIButton!){
        currentTaps = currentTaps + 1;
        updateTapsLbl()
        if isGameOver(){
            restartGame()
        }
            }
    
    func updateTapsLbl(){
        tapsLbl.text = "\(currentTaps) Taps"
    }
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps{
            return true
        }
        else {
            return false
        }
    }
    func restartGame(){
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImg.isHidden = false
        playBtn.isHidden = false
        howManyTapsTxt.isHidden = false
        
        tapsBtn.isHidden = true
        tapsLbl.isHidden = true
        
    }
    
}
