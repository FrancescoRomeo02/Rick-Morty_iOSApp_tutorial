//
//  GetCharactersResponse.swift
//  Rick&Morty
//
//  Created by Francesco Romeo on 13/07/23.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    let info: RMGetAllCharactersResponseInfo
    let results: [RMCharacter]
}

struct RMGetAllCharactersResponseInfo: Codable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}
