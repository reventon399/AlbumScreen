//
//  MyAlbumsCell.swift
//  AlbumScreen
//
//  Created by Алексей Лосев on 08.09.2022.
//

import UIKit
import SnapKit

class MyAlbumsCell: UICollectionViewCell {
    
    static let identifier = "MyAlbumsCell"
    
    //MARK: - Outlets
    
    private lazy var albumImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private lazy var albumNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = .black
        return label
    }()
    
    private lazy var numberOfPhotosLabel: UILabel = {
        let label = UILabel()
        label.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 16, weight: .regular))
        label.textColor = .systemGray
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
        albumImageView.snp.makeConstraints { make in
            make.bottom.equalTo(stack).multipliedBy(0.8)
        }
    }
    
    //MARK: - Configuration
    
    func configuration(model: AlbumsModel) {
        self.albumImageView.image = UIImage(named: model.albumImage)
        self.albumNameLabel.text = model.albumName
        self.numberOfPhotosLabel.text = model.numberOfPhotosLabel
    }
    
    //MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.albumImageView.image = nil
    }
}
