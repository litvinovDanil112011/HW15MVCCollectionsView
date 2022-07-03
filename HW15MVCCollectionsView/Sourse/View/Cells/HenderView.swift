//
//  HenderView.swift
//  HW15MVCCollectionsView
//
//  Created by Daniil Litvinov on 03.07.2022.
//

import UIKit

class HenderView: UICollectionReusableView {
    
    static let idintifiar = "HenderView"
    
    lazy var label: UILabel = {
        let lable = UILabel()
        lable.textAlignment = .left
        lable.font = .systemFont(ofSize: MetricHaader.textSize, weight: .bold)
        lable.textColor = .black
        return lable
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
       addSubview(label)
    }
    
    private func setupLayuot(){
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        label.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
}

enum MetricHaader {
    static let textSize: CGFloat = 30
}

