//
//  InAppNotificationView.swift
//  InAppNotification
//
//  Created by Manish Pandey on 07/04/21.
//

final class InAppNotificationView: UIView {
    
    // MARK: - Properties
    var viewModel: InAppNotificationViewModel? {
        didSet {
            self.setupData()
        }
    }
    
    // MARK: - Views
    private lazy var titleLabel = UILabel()
    private lazy var subtitleLabel = UILabel()
    private lazy var labelStackView = UIStackView()
    private lazy var actionIconButton = UIButton()
    
    // MARK: - Setups
    func setupViews() {
        self.checkAndSetupActionIconButton()
        self.checkAndSetupLabelStackView()
    }
    
    func setupData() {
        self.titleLabel.text = self.viewModel?.title
        self.subtitleLabel.text = self.viewModel?.subTitle
        self.actionIconButton.setImage(self.viewModel?.icon?.withRenderingMode(.alwaysTemplate), for: .normal)
        self.backgroundColor = self.viewModel?.type.color
    }
}

private extension InAppNotificationView {
    
    func checkAndSetupActionIconButton() {
        self.actionIconButton
            .add(to: self)
            .trailing(of: self.trailingAnchor, margin: safe(self.viewModel?.config.actionIconTrailingMargin))
            .top(of: self.topAnchor, margin: safe(self.viewModel?.config.actionIconTopMargin))
            .bottom(of: self.bottomAnchor, margin: safe(self.viewModel?.config.actionIconBottomMargin))
            .with(width: safe(self.viewModel?.config.actionIconSize.width))
        
        self.actionIconButton.tintColor = .white
    }
    
    func checkAndSetupLabelStackView() {
        self.labelStackView.axis = .vertical
        self.labelStackView.distribution = .fillProportionally
        self.labelStackView.spacing = safe(self.viewModel?.config.spaceBetweenTitleAndSubTitleLabel)
        
        if let _ = self.viewModel?.title {
            self.titleLabel.numberOfLines = 0
            self.titleLabel.textColor = self.viewModel?.config.titleLabelColor
            self.titleLabel.font = self.viewModel?.config.titleLabelFont
            self.labelStackView.addArrangedSubview(self.titleLabel)
        }
        
        if let _ = self.viewModel?.subTitle {
            self.subtitleLabel.numberOfLines = 0
            self.subtitleLabel.textColor = self.viewModel?.config.subtitleLabelColor
            self.subtitleLabel.font = self.viewModel?.config.subTitleLabelFont
            self.labelStackView.addArrangedSubview(self.subtitleLabel)
        }
        
        self.labelStackView
            .add(to: self)
            .leading(of: self.leadingAnchor, margin: safe(self.viewModel?.config.labelTrailingMargin))
            .top(of: self.topAnchor, margin: safe(self.viewModel?.config.labelTopMargin))
            .bottom(of: self.bottomAnchor, margin: safe(self.viewModel?.config.labelBottomMargin))
            .trailing(of: self.actionIconButton.leadingAnchor)
        
    }
    
}
