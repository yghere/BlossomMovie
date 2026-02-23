//
//  Errors.swift
//  BlossomMovie
//
//  Created by Yashasvi Goswami on 17/02/26.
//

import Foundation

enum APIConfigError: Error, LocalizedError {
    case fileNotFound
    case dataLoadingFailed(underlyingError: Error)
    case decodingFailed(underlyingError: Error)
    
    
    var errorDescription: String? {
        switch self {
        case .fileNotFound:
            return "API config File not found"
        case .dataLoadingFailed:
            return "Data loading failed from API config"
        case .decodingFailed:
            return "Decoding failed from API config"
        }
    }
}

enum NetworkError: Error, LocalizedError {
    case badURLResponse(underlyingError:Error)
    case missingConfig
    case urlBuildFailed
    
    var errorDescription: String? {
        switch self {
        case .badURLResponse(underlyingError: let error):
            return "Failed to parse URL response: \(error.localizedDescription)."
        case .missingConfig:
            return "Missing API configuration."
        case .urlBuildFailed:
            return "Failed to build URL."
        }
    }
}
