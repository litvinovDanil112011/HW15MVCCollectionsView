//
//  DataModel.swift
//  HW15MVCCollectionsView
//
//  Created by Daniil Litvinov on 03.07.2022.
//

import UIKit

final class DataModel {
    
    static let dataModel = DataModel()
    
    func confugureModels() -> [[Model]]{
        return [
                //секция 1 альбомы
                [Model(image: UIImage(named: "IMG0"), title: "Недавние", countOfItems: "12"),
                 Model(image: UIImage(named: "IMG1"), title: "Мы", countOfItems: "23"),
                 Model(image: UIImage(named: "IMG2"), title: "Учеба", countOfItems: "14"),
                 Model(image: UIImage(named: "IMG3"), title: "Вульф", countOfItems: "11"),
                 Model(image: UIImage(named: "IMG4"), title: "Тусе", countOfItems: "45"),
                 Model(image: UIImage(named: "IMG6"), title: "MacBook", countOfItems: "31"),
                 Model(image: UIImage(named: "IMG7"), title: "Еда", countOfItems: "1"),
                 Model(image: UIImage(named: "IMG8"), title: "Работа", countOfItems: "57"),
                 Model(image: UIImage(named: "IMG8"), title: "Работа", countOfItems: "57")],
                //Секция 2 Фото
                [Model(image: UIImage(named: "IMG8"), title: "недавние", countOfItems: "12"),
                 Model(image: UIImage(named: "IMG1"), title: "Мы", countOfItems: "23"),
                 Model(image: UIImage(named: "IMG5"), title: "Учеба", countOfItems: "14"),
                 Model(image: UIImage(named: "IMG2"), title: "Вульф", countOfItems: "11"),
                 Model(image: UIImage(named: "IMG3"), title: "Тусе", countOfItems: "45"),
                 Model(image: UIImage(named: "IMG1"), title: "MacBook", countOfItems: "31"),],
                //секция 3 таблица
                [Model(image: UIImage(systemName: "video"), title: "Видео", countOfItems: "12"),
                 Model(image: UIImage(systemName: "person.crop.square"), title: "Селфи", countOfItems: "23"),
                 Model(image: UIImage(systemName: "cube"), title: "Портреты", countOfItems: "14"),
                 Model(image: UIImage(systemName: "pano"), title: "Панорамы", countOfItems: "11"),
                 Model(image: UIImage(systemName: "square.stack.3d.down.right"), title: "Серии", countOfItems: "45"),
                 Model(image: UIImage(systemName: "square.stack.3d.forward.dottedline"), title: "Анимированные", countOfItems: "31"),],
                //секция 4 настройка таблица
                [Model(image: UIImage(systemName: "square.and.arrow.down"), title: "Импортированые", countOfItems: "12"),
                 Model(image: UIImage(systemName: "eye.slash"), title: "Скрытые", countOfItems: "23"),
                 Model(image: UIImage(systemName: "trash"), title: "Недавно удаленные", countOfItems: "14"),]
            ]
    }
}

