//
//  ViewController.swift
//  ColorLight
//
//  Created by Penélope Araújo on 10/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeColorButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackgroundInitialColor()
        updateButtonColor()
    }

    @IBAction func changeColorTap(_ sender: Any) {
        changeBackgroundColor()
        updateButtonColor()
    }
    
    private func setupBackgroundInitialColor() {
        self.view.backgroundColor = UIColor.random
    }
    
    private func updateButtonColor() {
        self.changeColorButton.setTitleColor(self.view.backgroundColor?.inverse(), for: .normal)
    }
    
    private func changeBackgroundColor() {
        let previousColor = self.view.backgroundColor
        let newColor = UIColor.random
        
        if previousColor != newColor {
            self.view.backgroundColor = newColor
        } else {
            changeBackgroundColor()
        }
    }
}

