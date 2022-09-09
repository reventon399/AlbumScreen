//
//  ViewController.swift
//  AlbumScreen
//
//  Created by Алексей Лосев on 08.09.2022.
//

import UIKit
import SnapKit

class MainScreenViewController: UIViewController {
    
    //MARK: - Outlets
    
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: createLayout())
        collectionView.register(MyAlbumsCell.self, forCellWithReuseIdentifier: MyAlbumsCell.identifier)
        collectionView.register(SharedAlbumsCell.self, forCellWithReuseIdentifier: SharedAlbumsCell.identifier)
        collectionView.register(MediaTypesCell.self, forCellWithReuseIdentifier: MediaTypesCell.identifier)
        
        collectionView.register(MyAlbumsAndSharedAlbumsCellHeader.self,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                withReuseIdentifier: MyAlbumsAndSharedAlbumsCellHeader.identifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        return collectionView
    }()
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Albums"
        view.backgroundColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        setupHierarchy()
        setupLayout()
    }
    
    //MARK: - Setup
    
    private func setupHierarchy() {
        view.addSubview(collectionView)
    }

    private func setupLayout() {
        collectionView.snp.makeConstraints { make in
            make.left.top.right.bottom.equalTo(view)
        }
    }
    
    //MARK: - Create UICollectionLayout
    
    private func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { (sectionIndex, _) -> NSCollectionLayoutSection in
            
            switch sectionIndex {
                
            case 0:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                      heightDimension: .fractionalHeight(1))
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 0)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1 / 2.2),
                                                       heightDimension: .fractionalWidth(1 / 1.8 * 2))
                let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: layoutItem, count: 2)
                layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0)
                
                
                
                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 10)
                layoutSection.orthogonalScrollingBehavior = .groupPaging
                
                let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.93),
                                                                     heightDimension: .estimated(44))
                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: layoutSectionHeaderSize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top)
                layoutSection.boundarySupplementaryItems = [layoutSectionHeader]
                
                return layoutSection
            case 1:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                      heightDimension: .fractionalHeight(1))
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 10)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                       heightDimension: .fractionalWidth(1 / 1.8))
                let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: layoutItem, count: 2)
                layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
                
                
                
                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
                layoutSection.orthogonalScrollingBehavior = .groupPaging
                
                let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.93),
                                                                     heightDimension: .estimated(44))
                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: layoutSectionHeaderSize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top)
                layoutSection.boundarySupplementaryItems = [layoutSectionHeader]
                
                return layoutSection
            case 2:
                let itemSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .fractionalHeight(0.33)
                    )
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                
                    layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5,
                                                             leading: 5,
                                                             bottom: 5,
                                                             trailing: 5)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.93),
                                                       heightDimension: .fractionalWidth(0.55))
                
                let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize,
                                                                   subitems: [layoutItem])
                layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                                    leading: 10,
                                                                    bottom: 0,
                                                                    trailing: 10)
                
                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.orthogonalScrollingBehavior = .continuous
                
                let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.93),
                                                                     heightDimension: .estimated(80))
                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: layoutSectionHeaderSize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top)
                layoutSection.boundarySupplementaryItems = [layoutSectionHeader]
                
                return layoutSection
            case 3:
                let itemSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .fractionalHeight(0.33)
                    )
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                
                    layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5,
                                                             leading: 5,
                                                             bottom: 5,
                                                             trailing: 5)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.93),
                                                       heightDimension: .fractionalWidth(0.55))
                
                let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize,
                                                                   subitems: [layoutItem])
                layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                                    leading: 10,
                                                                    bottom: 0,
                                                                    trailing: 10)
                
                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.orthogonalScrollingBehavior = .continuous
                
                let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.93),
                                                                     heightDimension: .estimated(80))
                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: layoutSectionHeaderSize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top)
                layoutSection.boundarySupplementaryItems = [layoutSectionHeader]
                
                return layoutSection
            default:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
                
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5)
                
                let layoutGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(300))
                let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: layoutGroupSize, subitems: [layoutItem])
                
                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.orthogonalScrollingBehavior = .groupPagingCentered
                
                return layoutSection
            }
        }
    }
}

    //MARK: - Extension
    
extension MainScreenViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return AlbumsModel.albumsModelsArray[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            let item = collectionView.dequeueReusableCell(withReuseIdentifier: MyAlbumsCell.identifier, for: indexPath) as! MyAlbumsCell
            item.configuration(model: AlbumsModel.albumsModelsArray[indexPath.section][indexPath.item])
            return item
        case 1:
            let item = collectionView.dequeueReusableCell(withReuseIdentifier: SharedAlbumsCell.identifier, for: indexPath) as! SharedAlbumsCell
            item.configuration(model: AlbumsModel.albumsModelsArray[indexPath.section][indexPath.item])
            return item
        case 2:
            let item = collectionView.dequeueReusableCell(withReuseIdentifier: MediaTypesCell.identifier, for: indexPath) as! MediaTypesCell
            item.configuration(model: AlbumsModel.albumsModelsArray[indexPath.section][indexPath.item])
            return item
        default:
            let item = collectionView.dequeueReusableCell(withReuseIdentifier: MyAlbumsCell.identifier, for: indexPath) as! MyAlbumsCell
            item.configuration(model: AlbumsModel.albumsModelsArray[indexPath.section][indexPath.item])
            return item
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        switch indexPath.section {
        case 0:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: MyAlbumsAndSharedAlbumsCellHeader.identifier, for: indexPath) as! MyAlbumsAndSharedAlbumsCellHeader
            header.headerLabel.text = "My Albums"
            return header
        case 1:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: MyAlbumsAndSharedAlbumsCellHeader.identifier, for: indexPath) as! MyAlbumsAndSharedAlbumsCellHeader
            header.headerLabel.text = "Shared Albums"
            return header
        case 2:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: MyAlbumsAndSharedAlbumsCellHeader.identifier, for: indexPath) as! MyAlbumsAndSharedAlbumsCellHeader
            header.headerLabel.text = "Media Types"
            return header
        default:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: MyAlbumsAndSharedAlbumsCellHeader.identifier, for: indexPath) as! MyAlbumsAndSharedAlbumsCellHeader
            header.headerLabel.text = "Shared Albums"
            return header
        }
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return AlbumsModel.albumsModelsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}
