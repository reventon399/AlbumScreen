//
//  MyAlbumsCell.swift
//  AlbumScreen
//
//  Created by Алексей Лосев on 08.09.2022.
//

import UIKit
import SnapKit

class MyAlbumsCell: UICollectionViewCell {
    
    //MARK: - Outlets
    
    private lazy var albumImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    private lazy var albumNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .title2)
        return label
    }()
    
    private lazy var numberOfPhotosLabel: UILabel = {
        let label = UILabel()
        label.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 12, weight: .bold))
        return label
    }()
    
    lazy var stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        return stack
    }()
    
    //MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Setup
    
    private func setupHierarchy() {
        contentView.addSubview(stack)
        stack.addArrangedSubview(albumImageView)
        stack.addArrangedSubview(albumNameLabel)
        stack.addArrangedSubview(numberOfPhotosLabel)
    }
    
    private func setupLayout() {
        stack.snp.makeConstraints { make in
            make.left.top.right.bottom.equalTo(contentView)
        }
    }
    
    //MARK: - Configuration
    
    private func configuration() {
        
    }
    
    //MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}
