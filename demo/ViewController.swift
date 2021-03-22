//
//  ViewController.swift
//  demo
//
//  Created by Pankaj Kharel on 22/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var player1 = 0
    var cpu = 0
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    

    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        var leftCard = String(leftNumber)
        leftCard = "card" + leftCard
        let rightNumber = Int.random(in: 2...14)
        var rightCard = String(rightNumber)
        rightCard = "card" + rightCard
        
        leftImageView.image = UIImage(named: leftCard)
        rightImageView.image = UIImage(named: rightCard)
        
        
        
        if(leftNumber > rightNumber){
            player1 += 1
        }else{
            cpu += 1
        }
        
        leftScoreLabel.text = String(player1)
        rightScoreLabel.text = String(cpu)
    }
    
}

