//
//  MyAlbumsAndSharedAlbumsCellHeader.swift
//  AlbumScreen
//
//  Created by Алексей Лосев on 09.09.2022.
//

import UIKit

class MyAlbumsAndSharedAlbumsCellHeader: UICollectionReusableView {
    
    static let identifier = "MyAlbumsAndSharedAlbumsCellHeader"
    
    // MARK: - Outlets
    
    lazy var title: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        return label
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
        addSubview(title)
    }
    
    private func setupLayout() {
        title.snp.makeConstraints { make in
            make.bottom.equalTo(self)
            make.left.equalTo(self)
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        title.text = nil
    }
}
