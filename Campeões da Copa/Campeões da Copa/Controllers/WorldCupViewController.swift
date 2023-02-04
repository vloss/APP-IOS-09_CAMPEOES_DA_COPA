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
    @IBOutlet weak var tableView: UITableView!
    
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

extension WorldCupViewController: UITableViewDataSource{
    // Numero de seções
    func numberOfSections(in tableView: UITableView) -> Int {
        // Pega a quantidade de matches do campeão
        return worldCup.matches.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // pega a quantidade de jogos de cada seção
        let games = worldCup.matches[section].games
        
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GamesTableViewCell
        
        let match = worldCup.matches[indexPath.section]
        let game = match.games[indexPath.row]
        
        cell.prepare(with: game)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let match = worldCup.matches[section]
        return match.stage
    }
}

extension WorldCupViewController: UITableViewDelegate {
    
}
