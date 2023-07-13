//
//  RMEndPoint.swift
//  Rick&Morty
//
//  Created by Francesco Romeo on 13/07/23.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get characters info
    case character
    /// Endpoint to get locations info
    case location
    /// Endpoint to get episodes info
    case episode
}
