//
//  WorldCup.swift
//  Campeões da Copa
//
//  Created by Vinicius Loss on 30/01/23.
//

import Foundation


// Usando o protocolo Codable, para utilizar os dados do json.
struct WorldCup:Codable {

    let year: Int
    let country: String
    let winner: String
    let vice: String
    let winnerScore: String
    let viceScore:String
    let matches: [Match]

}


struct Match: Codable {
    let stage: String
    let games: [Game]
}

struct Game: Codable {
    let home: String
    let away: String
    let score: String
    let date: String
}
