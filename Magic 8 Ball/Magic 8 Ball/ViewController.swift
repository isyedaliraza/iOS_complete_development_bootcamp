//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jassim Almljawi on 6/22/20.
//  Copyright © 2020 Syed Ali Raza Bokhari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballImages: [UIImage] = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setRandomImageLiteral()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        setRandomImageLiteral()
    }
    
    func setRandomImageLiteral() {
        let randomIndex = Int.random(in: 0...4)
        imageView.image = ballImages[randomIndex]
    }
}

