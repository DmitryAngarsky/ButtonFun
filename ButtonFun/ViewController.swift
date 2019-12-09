//
//  ViewController.swift
//  ButtonFun
//
//  Created by Дмитрий Тараканов on 31/07/2019.
//  Copyright © 2019 Dmitry Angarsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let title = sender.title(for: .selected)!
        let text = "\(title) button pressed"
        let styledText = NSMutableAttributedString(string: text)
        let attributes = [
            NSAttributedString.Key.font:
                UIFont.boldSystemFont(ofSize: statusLabel.font.pointSize)
        ]
        
        let nameRange = (text as NSString).range (of: title)
        styledText.setAttributes ( attributes, range : nameRange )
        statusLabel.attributedText = styledText
    }
}
