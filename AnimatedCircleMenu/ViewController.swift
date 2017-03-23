//
//  ViewController.swift
//  AnimatedCircleMenu
//
//  Created by Yawo Echitey on 3/23/17.
//  Copyright © 2017 Echitey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var copyButton: UIButton!
    @IBOutlet weak var cutButton: UIButton!
    @IBOutlet weak var pasteButton: UIButton!
    @IBOutlet weak var marketButton: UIButton!
    
    var copyButtonCenter: CGPoint!
    var pasteButtonCenter: CGPoint!
    var cutButtonCenter: CGPoint!
    var marketButtonCenter: CGPoint!
    
    var menuOpen: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        copyButtonCenter = copyButton.center
        pasteButtonCenter = pasteButton.center
        cutButtonCenter = cutButton.center
        marketButtonCenter = marketButton.center
        
        copyButton.center = menuButton.center
        pasteButton.center = menuButton.center
        cutButton.center = menuButton.center
        marketButton.center = menuButton.center
        
    }
    
    @IBAction func toggleMenu(_ sender: UIButton){
        
        if sender.currentImage == #imageLiteral(resourceName: "menu"){
            menuOpen = true
            UIView.animate(withDuration: 0.3) {
                self.copyButton.center = self.copyButtonCenter
                self.pasteButton.center = self.pasteButtonCenter
                self.cutButton.center = self.cutButtonCenter
                self.marketButton.center = self.marketButtonCenter
            }
            sender.setImage(#imageLiteral(resourceName: "cancel"), for: .normal)
            
        }else{
            menuOpen = false
            UIView.animate(withDuration: 0.3) {
                self.copyButton.center = self.menuButton.center
                self.pasteButton.center = self.menuButton.center
                self.cutButton.center = self.menuButton.center
                self.marketButton.center = self.menuButton.center
            }
            sender.setImage(#imageLiteral(resourceName: "menu"), for: .normal)
        }
    }
    
    @IBAction func closeMenu(_ sender: UIButton){
        if menuOpen{
            UIView.animate(withDuration: 0.3) {
                self.copyButton.center = self.menuButton.center
                self.pasteButton.center = self.menuButton.center
                self.cutButton.center = self.menuButton.center
                self.marketButton.center = self.menuButton.center
            }
            menuButton.setImage(#imageLiteral(resourceName: "menu"), for: .normal)
        }
    }

}

