//
//  AlbomsViewController.swift
//  HW15MVCCollectionsView
//
//  Created by Daniil Litvinov on 03.07.2022.
//

import UIKit

class AlbomsViewController: UIViewController, UICollectionViewDelegate {
    
    private var mainScreen: MainScreen! {
        guard isViewLoaded else { return nil }
        return (view as! MainScreen)
    }
    
    override func loadView() {
        super.loadView()
        self.view = MainScreen()
    }
    
    public var modelData = [[Model]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
}

extension AlbomsViewController {
    func configureView() {
        title = "Альбомы"
        view.backgroundColor = .white
        modelData = DataModel.dataModel.confugureModels()
        mainScreen.collectionsView.dataSource = self
        mainScreen.collectionsView.delegate = self
        let models = modelData
        models.forEach { [unowned self] model in
            mainScreen.configureView(with: models)
        }
    }
}

