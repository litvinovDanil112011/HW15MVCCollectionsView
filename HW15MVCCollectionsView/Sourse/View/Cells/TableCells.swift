//
//  TableCells.swift
//  HW15MVCCollectionsView
//
//  Created by Daniil Litvinov on 03.07.2022.
//

import UIKit

class TableCells: UICollectionViewCell {
   static let idintifear = "TableCells"
    
     let imageTable: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        return image
    }()

     let titleTable: UILabel = {
        let title = UILabel()
        title.textColor = .systemBlue
        return title
    }()
    
     let countOfItemsTable: UILabel = {
        let count = UILabel()
        count.textColor = .systemGray3
        return count
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHerarchY()
        setupLayuot()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupHerarchY(){
        contentView.addSubview(imageTable)
        contentView.addSubview(titleTable)
        contentView.addSubview(countOfItemsTable)
    }
    
//    override func prepareForReuse() {
//        super.prepareForReuse()
//        imageTable.image = nil
//        titleTable.text = nil
//        countOfItemsTable.text = nil
//    }
    
    private func setupLayuot(){
        imageTable.translatesAutoresizingMaskIntoConstraints = false
        imageTable.widthAnchor.constraint(equalToConstant: MetricTable.sizeImage).isActive = true
        imageTable.heightAnchor.constraint(equalToConstant: MetricTable.sizeImage).isActive = true
        imageTable.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: MetricTable.leadingImage).isActive = true
        imageTable.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        titleTable.translatesAutoresizingMaskIntoConstraints = false
        titleTable.leadingAnchor.constraint(equalTo: imageTable.leadingAnchor, constant: MetricTable.leadingTitle).isActive = true
        titleTable.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        
        countOfItemsTable.translatesAutoresizingMaskIntoConstraints = false
        countOfItemsTable.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        countOfItemsTable.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: MetricTable.countTraling).isActive = true
    }
}

enum MetricTable {
    static let sizeImage: CGFloat = 27
    static let leadingImage: CGFloat = 15
    static let leadingTitle: CGFloat = 50
    static let countTraling: CGFloat = 340
}

