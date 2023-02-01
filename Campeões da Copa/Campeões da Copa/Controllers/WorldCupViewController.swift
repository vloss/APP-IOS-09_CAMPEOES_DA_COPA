//
//  WorldCupViewController.swift
//  Campeões da Copa
//
//  Created by Vinicius Loss on 30/01/23.
//

import UIKit

class WorldCupViewController: UIViewController {
    
    var worldCup: WorldCup!

    override func viewDidLoad() {
        super.viewDidLoad()

        print("Ano da copa selecionada \(worldCup.year)")
        
    }
    
}
