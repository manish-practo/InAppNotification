//
//  InAppNotificationConfig.swift
//  InAppNotification
//
//  Created by Manish Pandey on 07/04/21.
//

import Foundation

open class InAppNotificationConfig {
    
    var titleLabelFont = UIFont.boldSystemFont(ofSize: 16)
    var subTitleLabelFont = UIFont.systemFont(ofSize: 14)
    
    var labelLeadingMargin: CGFloat = 10
    var labelTrailingMargin: CGFloat = 10
    var labelTopMargin: CGFloat = 10
    var labelBottomMargin: CGFloat = 10
    var spaceBetweenTitleAndSubTitleLabel: CGFloat = 5
    
    var titleLabelColor = UIColor.white
    var subtitleLabelColor = UIColor.white
    
    var actionIconSize = CGSize(width: 30, height: 30)
    var actionIconTrailingMargin: CGFloat = 10
    var actionIconTopMargin: CGFloat = 10
    var actionIconBottomMargin: CGFloat = 10
    
    var shouldAutoDisppear = true
    var autoDisappearDuration = TimeInterval(10)
    
    public init() { }
    
}
