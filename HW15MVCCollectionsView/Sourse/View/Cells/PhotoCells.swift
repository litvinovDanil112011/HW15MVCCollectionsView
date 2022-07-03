//
//  PhotoCells.swift
//  HW15MVCCollectionsView
//
//  Created by Daniil Litvinov on 03.07.2022.
//

import UIKit

class PhotoCells: UICollectionViewCell {
    
    static let idintifear = "PhotoCells"
    
     let image: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 5
        return image
    }()

     let title: UILabel = {
        let title = UILabel()
        title.textColor = .black
        return title
    }()
    
     let countOfItems: UILabel = {
        let count = UILabel()
        count.textColor = .systemGray3
        return count
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHerarchy()
        setupLayuot()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    private func setupHerarchy(){
        contentView.addSubview(image)
        contentView.addSubview(title)
        contentView.addSubview(countOfItems)
    }
    
    private func setupLayuot(){
        image.translatesAutoresizingMaskIntoConstraints = false
        image.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        image.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        image.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        image.heightAnchor.constraint(equalTo: image.widthAnchor).isActive = true

        title.translatesAutoresizingMaskIntoConstraints = false
        title.topAnchor.constraint(equalTo: image.bottomAnchor).isActive = true
        
        countOfItems.translatesAutoresizingMaskIntoConstraints = false
        countOfItems.topAnchor.constraint(equalTo: title.bottomAnchor).isActive = true
    }
}

