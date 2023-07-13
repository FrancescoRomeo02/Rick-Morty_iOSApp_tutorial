//
//  RMCharacterGender.swift
//  Rick&Morty
//
//  Created by Francesco Romeo on 13/07/23.
//

import Foundation

/// RM characters gender: Female, Male, Genderless or unknow
enum RMCharacterGender: String, Codable{
    case Female = "Female"
    case Male = "Male"
    case Genderless = "Genderless"
    case unknow = "unknow"
}
