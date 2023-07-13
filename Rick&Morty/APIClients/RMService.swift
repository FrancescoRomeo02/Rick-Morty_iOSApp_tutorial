//
//  RMServices.swift
//  Rick&Morty
//
//  Created by Francesco Romeo on 13/07/23.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    /// Send R&M API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute (_ request: RMRequest, completion: @escaping() -> Void){}
}
