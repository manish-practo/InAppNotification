//
//  InAppNotificationType.swift
//  InAppNotification
//
//  Created by Manish Pandey on 07/04/21.
//

public enum InAppNotificationType {
    case success
    case info
    case error
    case warning
    
    var color: UIColor? {
        switch self {
        case .success:
            return UIColor(r: 40, g: 167, b: 69)
        case .info:
            return UIColor(r: 0, g: 123, b: 255)
        case .error:
            return UIColor(r: 220, g: 53, b: 69)
        case .warning:
            return UIColor(r: 255, g: 193, b: 7)
        }
    }
}
