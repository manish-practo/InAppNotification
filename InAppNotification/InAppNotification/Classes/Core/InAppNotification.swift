//
//  InAppNotification.swift
//  InAppNotification
//
//  Created by Manish Pandey on 07/04/21.
//

import Foundation

public class InAppNotification {
    
    // MARK: - Properties
    public static var shared = InAppNotification()
    
    // MARK: - Views
    private lazy var notificationView = InAppNotificationView()
    
    public func show(on vc: UIViewController,
                     with config: InAppNotificationConfig = InAppNotificationConfig(),
                     title: String? = nil,
                     subTitle: String? = nil,
                     actionIcon: UIImage? = nil,
                     type: InAppNotificationType = .info,
                     shouldAutoDisppear: Bool = true) {
        
        // Remove existign notification
        self.remove()
        
        // Add new notification
        DispatchQueue.main.async { [unowned self] in
            self.notificationView
                .add(to: vc.view)
                .top(of: vc.view.safeAreaLayoutGuide.topAnchor)
                .leading(of: vc.view.safeAreaLayoutGuide.leadingAnchor)
                .trailing(of: vc.view.safeAreaLayoutGuide.trailingAnchor)
            
            self.notificationView.viewModel = InAppNotificationViewModel(title: safe(title),
                                                                         subTitle: safe(subTitle),
                                                                         icon: actionIcon,
                                                                         type: type,
                                                                         config: config)
            self.notificationView.setupViews()
            self.notificationView.layer.zPosition = CGFloat(Int.max)
            
            // Check and remove notification after given duration
            if config.shouldAutoDisppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + config.autoDisappearDuration) {
                    self.remove()
                }
            }
        }
    }
    
    public func remove() {
        DispatchQueue.main.async {
            self.notificationView.removeFromSuperview()
        }
    }
    
}
