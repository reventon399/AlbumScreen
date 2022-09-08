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
        return imageView
    }()
    
    private lazy var albumNameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private lazy var numberOfPhotosLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    //MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Setup
    
    private func setupHierarchy() {
        
    }
    
    private func setupLayout() {
        
    }
    //MARK: - Reuse
}
