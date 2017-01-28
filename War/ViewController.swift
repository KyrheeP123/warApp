//
//  ViewController.swift
//  War
//
//  Created by Kyrhee Powell on 6/30/16.
//  Copyright © 2016 Kyrhee Powell. All rights reserved.
//
//Allows us to use classes in UIKit
import UIKit

//ViewController is sub-class of UIViewController
class ViewController: UIViewController {
    //MARK: Outlets
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var dealButton: UIButton!
    
    @IBOutlet weak var enemyScoreLabel: UILabel!
    var enemyScore:Int = 0
    @IBOutlet weak var playerScoreLabel: UILabel!
    var playerScore:Int = 0
    var myCardArray: [String] = ["Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King", "Ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    @IBAction func dealButtonTouchedUpInside(_ sender: UIButton) {
        //self.dealButton.setTitle("Next Card", forState: UIControlState.Normal)
        
        //Generates numbers from 0-12 so add 1 to make it generate 1-13
        //self.firstCardImageView.image = UIImage(named: "card" +  String(arc4random_uniform(13) + 1))
        //self.secondCardImageView.image = UIImage(named: "card" + String(arc4random_uniform(13) + 1))
        
        //Generate random number
        let randomFirstCard:Int = Int(arc4random_uniform(13))
        let randomSecondCard:Int = Int(arc4random_uniform(13))
        
       
        
        self.firstCardImageView.image = UIImage(named: myCardArray[randomFirstCard])
        
        self.secondCardImageView.image = UIImage(named: myCardArray[randomSecondCard])
        
        //Determine the higher card 
        
        if randomFirstCard > randomSecondCard{
            //TODO: First card is larger
            self.playerScore += 1
            self.playerScoreLabel.text = String(playerScore)
        }
            
        else if randomSecondCard == randomFirstCard{
            //TODO: Same value
        }
            
        else{
            //TODO: First card smaller
            self.enemyScore += 1
            self.enemyScoreLabel.text = String(enemyScore)
        }
     
    }
    

}

