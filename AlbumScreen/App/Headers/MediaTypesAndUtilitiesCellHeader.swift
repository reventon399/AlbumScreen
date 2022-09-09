//
//  MediaTypesAndUtilitiesHeader.swift
//  AlbumScreen
//
//  Created by Алексей Лосев on 09.09.2022.
//

import UIKit
import SnapKit

class MediaTypesAndUtilitiesCellHeader: UICollectionReusableView {
    
    static let identifier = "MediaTypesAndUtilitiesCellHeader"
    
    // MARK: - Outlets
    
    lazy var headerLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    private lazy var separatorView: UIView = {
       let view = UIView()
        view.backgroundColor = .systemGray
        return view
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        addSubview(headerLabel)
        addSubview(separatorView)
    }
    
    private func setupLayout() {
        headerLabel.snp.makeConstraints { make in
            make.bottom.equalTo(self)
            make.left.equalTo(self)
        }
        separatorView.snp.makeConstraints { make in
            make.height.equalTo(0.5)
            make.width.equalTo(safeAreaLayoutGuide)
            make.bottom.equalTo(headerLabel.snp.top).offset(-14)
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        headerLabel.text = nil
    }
}
