//
//  ViewController.swift
//  AnanevAYU_2.1_2
//
//  Created by Anton Anan'eV on 19.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewRed: UIView!
    
    @IBOutlet var viewYellow: UIView!
    
    @IBOutlet var viewGreen: UIView!
    
    @IBOutlet var buttonOutlet: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewRed.layer.cornerRadius = viewRed.frame.width / 2
        viewRed.alpha = 0.3
        
        
        
        viewYellow.layer.cornerRadius = viewYellow.frame.width / 2
        viewYellow.alpha = 0.3
        
        
        viewGreen.layer.cornerRadius = viewGreen.frame.width / 2
        viewGreen.alpha = 0.3
        
        
        buttonOutlet.layer.cornerRadius = buttonOutlet.frame.height / 4
        
        buttonOutlet.setTitle("START", for: .normal)
        
    }

    @IBAction func button(_ sender: Any) {
        
        if viewRed.alpha != 1 && viewYellow.alpha != 1 && viewGreen.alpha != 1 {
            buttonOutlet.setTitle("NEXT", for: .normal)
            viewRed.alpha = 1

        } else if viewRed.alpha == 1 {
            viewRed.alpha = 0.3
            viewYellow.alpha = 1
            viewGreen.alpha = 0.3

        } else if viewYellow.alpha == 1 {
            viewRed.alpha = 0.3
            viewGreen.alpha = 1
            viewYellow.alpha = 0.3

        } else if viewGreen.alpha == 1 {
            viewRed.alpha = 1
            viewGreen.alpha = 0.3
            viewYellow.alpha = 0.3
        }
        
    }
    
}

