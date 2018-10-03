//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Jimmy Lin on 9/23/18.
//  Copyright © 2018 Jimmy Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let magicBall = ["ball1", "ball2", "ball3", "ball4", "ball5"];
    
    var random8Ball: Int = 0;
    @IBOutlet weak var magic8Ball: UIImageView!
    
    @IBAction func askButton(_ sender: UIButton){
        rollRandom8Ball();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rollRandom8Ball();
    }
    
    
    func rollRandom8Ball(){
        random8Ball = Int(arc4random_uniform(5));
        
        magic8Ball.image = UIImage(named: magicBall[random8Ball]);
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if(motion == .motionShake)
        {
            rollRandom8Ball();
        }
    }

}

