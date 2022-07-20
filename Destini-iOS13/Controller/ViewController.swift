//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var Destini = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        showDestiny()

    }

    @IBAction func UserChoice(_ sender: UIButton) {
        Destini.getDestini(userChoice: sender.currentTitle!)
        showDestiny()
    }
    func showDestiny(){
        let destiniArray = Destini.updateDestini()
        storyLabel.text = destiniArray.0
        choice1Button.setTitle(destiniArray.1, for: .normal)
        choice2Button.setTitle(destiniArray.2, for: .normal)
    }
    
    
}

