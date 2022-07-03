//
//  MainScreen.swift
//  HW15MVCCollectionsView
//
//  Created by Daniil Litvinov on 03.07.2022.
//

import UIKit

class MainScreen: UIView {
    
    private var models = [[Model]]()
    
    lazy var collectionsView: UICollectionView = {
        let collectionsView = UICollectionView(frame: .zero, collectionViewLayout: layuotSections())
        collectionsView.register(PhotoCells.self, forCellWithReuseIdentifier: PhotoCells.idintifear)
        collectionsView.register(TableCells.self, forCellWithReuseIdentifier: TableCells.idintifear)
        collectionsView.register(HenderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HenderView.idintifiar)
        collectionsView.translatesAutoresizingMaskIntoConstraints = false
        return collectionsView
    }()
    
    func configureView(with models: [[Model]]) {
        self.models = models
        collectionsView.reloadData()
    }
    
    // MARK: Иницилизаторы
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView(with: models)
        setupView()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
        setupLayout()
    }
    
    func setupView() {
        backgroundColor = .red
        addSubview(collectionsView)
    }
    
    func setupLayout() {
        collectionsView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        collectionsView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        collectionsView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        collectionsView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
    }
}

//MARK: расширение
extension MainScreen {
    private func layuotSections() -> UICollectionViewLayout {
        let layuot = UICollectionViewCompositionalLayout {
            (sectionsIndex: Int, layuot: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            guard let sectionsLayuot = Sections(rawValue: sectionsIndex) else { return nil }
            
            switch sectionsLayuot {
            case .albomsSections:
                return self.albomsSectionLayuot()
            case .photoSections:
                return self.photoSectionLayuot()
            case .tableSections:
                return self.tableSectionLayuot()
            case .tableSettingsSections:
                return self.tableSettingsSectionLayuot()
            }
        }
        return layuot
    }
    //MARK: Sections Layuot
    // секция 1 альбомы
    private func albomsSectionLayuot() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 10, bottom: 10, trailing: 5)
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(0.4),
            heightDimension: .fractionalHeight(0.475))
        let group = NSCollectionLayoutGroup.vertical(
            layoutSize: groupSize,
            subitem: item,
            count: 2)
        group.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 5)
        
        let sections = NSCollectionLayoutSection(group: group)
        sections.orthogonalScrollingBehavior = .paging
        // hender
        let headerSize = NSCollectionLayoutSize(
            widthDimension: .fractionalHeight(0.4),
            heightDimension: .absolute(45))
        let hender = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: headerSize,
            elementKind: UICollectionView.elementKindSectionHeader,
            alignment: .top)
        sections.boundarySupplementaryItems = [hender]
        return sections
    }
    //секция 2 фото
    private func photoSectionLayuot() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: .zero, trailing: 5)
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(0.4),
            heightDimension: .fractionalHeight(0.25))
        let group = NSCollectionLayoutGroup.vertical(
            layoutSize: groupSize,
            subitem: item,
            count: 1)
        group.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 5, trailing: 5)
        let sections = NSCollectionLayoutSection(group: group)
        sections.orthogonalScrollingBehavior = .paging
        // hender
        let headerSize = NSCollectionLayoutSize(
            widthDimension: .fractionalHeight(0.4),
            heightDimension: .absolute(45))
        let hender = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: headerSize,
            elementKind: UICollectionView.elementKindSectionHeader,
            alignment: .top)
        sections.boundarySupplementaryItems = [hender]
    return sections
    }
    //секция 3 таблица
    private func tableSectionLayuot() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 5)
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(0.1),
            heightDimension: .fractionalHeight(0.1 / 2))
        let group = NSCollectionLayoutGroup.vertical(
            layoutSize: groupSize,
            subitem: item,
            count: 1)
        group.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 5)
        let sections = NSCollectionLayoutSection(group: group)
        // hender
        let headerSize = NSCollectionLayoutSize(
            widthDimension: .fractionalHeight(0.4),
            heightDimension: .absolute(45))
        let hender = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: headerSize,
            elementKind: UICollectionView.elementKindSectionHeader,
            alignment: .top)
        sections.boundarySupplementaryItems = [hender]
    return sections
    }
    //секция 4 таблица
    private func tableSettingsSectionLayuot() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 5)
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(0.1),
            heightDimension: .absolute(45))
        let group = NSCollectionLayoutGroup.vertical(
            layoutSize: groupSize,
            subitem: item,
            count: 1)
        group.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 5)
        let sections = NSCollectionLayoutSection(group: group)
        sections.contentInsets.leading = MetricSections.sectionsLeading
        sections.contentInsets.top = MetricSections.sectionsTop
        // hender
        let headerSize = NSCollectionLayoutSize(
            widthDimension: .fractionalHeight(0.4),
            heightDimension: .absolute(45))
        let hender = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: headerSize,
            elementKind: UICollectionView.elementKindSectionHeader,
            alignment: .top)
        sections.boundarySupplementaryItems = [hender]
    return sections
    }
}

enum Sections: Int {
    case albomsSections = 0
    case photoSections = 1
    case tableSections = 2
    case tableSettingsSections = 3
}

enum MetricSections {
    static let sectionsLeading: CGFloat = 2
    static let sectionsTop: CGFloat = 10
}
