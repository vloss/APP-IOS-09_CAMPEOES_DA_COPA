//
//  WorldCupTableViewCell.swift
//  Campeões da Copa
//
//  Created by Vinicius Loss on 31/01/23.
//

import UIKit

class WorldCupTableViewCell: UITableViewCell {

    @IBOutlet weak var lbYear: UILabel!
    @IBOutlet weak var ivWinner: UIImageView!
    @IBOutlet weak var ivVice: UIImageView!
    @IBOutlet weak var lbWinner: UILabel!
    @IBOutlet weak var lbVice: UILabel!
    @IBOutlet weak var lbWinnerScore: UILabel!
    @IBOutlet weak var lbViceScore: UILabel!
    @IBOutlet weak var lbCountry: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func prepare(with cup: WorldCup){
        
        lbYear.text         = "\(cup.year)"
        ivWinner.image      = UIImage(named: "\(cup.winner).png")
        ivVice.image        = UIImage(named: "\(cup.vice).png")
        lbWinner.text       = cup.winner
        lbVice.text         = cup.vice
        lbWinnerScore.text  = cup.winnerScore
        lbViceScore.text    = cup.viceScore
        lbCountry.text      = cup.country
    }

}
