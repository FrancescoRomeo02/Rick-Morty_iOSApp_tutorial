//
//  RMCharacterStatus.swift
//  Rick&Morty
//
//  Created by Francesco Romeo on 13/07/23.
//

import Foundation

/// RM Character status, alive, dead or unknow
enum RMCharacterStatus: String, Codable{
    case alive = "Alive"
    case dead = "Dead"
    case unknow = "unknow"
}
