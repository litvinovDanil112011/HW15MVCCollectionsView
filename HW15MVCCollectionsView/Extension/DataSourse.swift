//
//  DataSourse.swift
//  HW15MVCCollectionsView
//
//  Created by Daniil Litvinov on 03.07.2022.
//

import UIKit

extension AlbomsViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            print("items in section - \(modelData[0].count)")
            return modelData[0].count
        case 1:
            print("items in section - \(modelData[1].count)")
            return modelData[1].count
        case 2:
            print("items in section - \(modelData[2].count)")
            return modelData[2].count
        case 3:
            print("items in section - \(modelData[3].count)")
            return modelData[3].count
        default:
            print("ERROR IN SECTION")
            return 0
            
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return modelData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let model = modelData[indexPath.section][indexPath.row]
        
        switch (indexPath as NSIndexPath).section {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoCells.idintifear, for: indexPath) as! PhotoCells
            cell.image.image = model.image
            cell.title.text = model.title
            cell.countOfItems.text = model.countOfItems
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoCells.idintifear, for: indexPath) as! PhotoCells
            cell.image.image = model.image
            cell.title.text = model.title
            cell.countOfItems.text = model.countOfItems
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TableCells.idintifear, for: indexPath) as! TableCells
            cell.imageTable.image = model.image
            cell.titleTable.text = model.title
            cell.countOfItemsTable.text = model.countOfItems
            return cell
        case 3:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TableCells.idintifear, for: indexPath) as! TableCells
            cell.imageTable.image = model.image
            cell.titleTable.text = model.title
            cell.countOfItemsTable.text = model.countOfItems
            return cell
        default:
            break
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
      guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HenderView.idintifiar, for: indexPath) as? HenderView else {
          return HenderView()}
        
        header.frame.size.height = 60
        
          switch indexPath.section {
          case 0:
              header.label.text = "Мои Альбомы"
          case 1:
              header.label.text = "Общие альбомы"
          case 2:
              header.label.text = "Типы медиафайлов"
          case 3:
              header.label.text = "Другое"
          default:
              break
          }
        return header
    }
}


