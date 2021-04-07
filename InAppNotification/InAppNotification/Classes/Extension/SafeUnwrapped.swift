//
//  SafeUnwrapped.swift
//  InAppNotification
//
//  Created by Manish Pandey on 07/04/21.
//

import Foundation

func safe(_ value: CGFloat?) -> CGFloat {
    return value ?? 0
}

func safe(_ value: Double?) -> Double {
    return value ?? 0
}

func safe(_ value: String?) -> String {
    return value ?? ""
}
