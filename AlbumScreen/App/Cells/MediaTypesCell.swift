//
//  MediaTypesCell.swift
//  AlbumScreen
//
//  Created by Алексей Лосев on 09.09.2022.
//

import UIKit
import SnapKit

class MediaTypesCell: UICollectionViewCell {
    
    static let identifier = "MediaTypesCell"
    
    //MARK: - Outlets
    
    private lazy var albumImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.tintColor = .systemBlue
        return imageView
    }()
    
    private lazy var albumNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textColor = .systemBlue
        return label
    }()
    
    private lazy var numberOfPhotosLabel: UILabel = {
        let label = UILabel()
        label.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 16, weight: .regular))
        label.textColor = .systemGray
        return label
    }()
    
    private lazy var chevronImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.tintColor = .systemGray
        return imageView
    }()
    
    private lazy var separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray
        return view
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
        addSubview(albumImageView)
        addSubview(albumNameLabel)
        addSubview(numberOfPhotosLabel)
        addSubview(chevronImageView)
        addSubview(separatorView)
    }
    
    private func setupLayout() {
        albumImageView.snp.makeConstraints { make in
            make.centerY.equalTo(self)
            make.left.equalTo(self)
        }
        albumNameLabel.snp.makeConstraints { make in
            make.centerY.equalTo(albumImageView.snp.centerY)
            make.left.equalTo(albumImageView.snp.right).offset(10)
        }
        chevronImageView.snp.makeConstraints { make in
            make.centerY.equalTo(self)
            make.right.equalTo(safeAreaLayoutGuide.snp.right).offset(-10)
        }
        numberOfPhotosLabel.snp.makeConstraints { make in
            make.centerY.equalTo(chevronImageView.snp.centerY)
            make.right.equalTo(chevronImageView.snp.left).offset(10)
        }
        separatorView.snp.makeConstraints { make in
            make.left.equalTo(albumNameLabel.snp.left)
            make.top.equalTo(albumNameLabel.snp.bottom).offset(-10)
            make.left.equalTo(safeAreaLayoutGuide.snp.left).offset(10)
        }
    }
    
    //MARK: - Configuration
    
    func configuration(model: AlbumsModel) {
        self.albumImageView.image = UIImage(named: model.albumImage)
        self.albumNameLabel.text = model.albumName
        self.numberOfPhotosLabel.text = model.numberOfPhotosLabel
        self.chevronImageView.image = UIImage(named: model.chevronImage!)
    }
    
    //MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.albumImageView.image = nil
        self.chevronImageView.image = nil
    }
}
