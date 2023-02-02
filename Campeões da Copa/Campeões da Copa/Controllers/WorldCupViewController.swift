//
//  WorldCupViewController.swift
//  Campeões da Copa
//
//  Created by Vinicius Loss on 30/01/23.
//

import UIKit

class WorldCupViewController: UIViewController {
    
    var worldCup: WorldCup!
    
    @IBOutlet weak var ivWinner: UIImageView!
    @IBOutlet weak var ivVice: UIImageView!
    @IBOutlet weak var lbScore: UILabel!
    @IBOutlet weak var lbWinner: UILabel!
    @IBOutlet weak var lbVice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "World Cup \(worldCup.year)"
        
        ivWinner.image = UIImage(named: "\(worldCup.winner).png")
        ivVice.image = UIImage(named: "\(worldCup.vice).png")
        lbVice.text = worldCup.vice
        lbWinner.text = worldCup.winner
        lbScore.text = "\(worldCup.winnerScore) X \(worldCup.viceScore)"
        
    }
    
}
