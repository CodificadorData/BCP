//
//  HomePresenter.swift
//  AppPapple
//
//  Created by Christian Morante on 18/02/24.
//

import UIKit

class HomePresenter {
    
    private let dragonBallInteractor: HomeInteractor
    var ui: DragonBallUI?
    var modelDragon: [Item] = []
    
    init(homeInteractor: HomeInteractor) {
        self.dragonBallInteractor = HomeInteractor()
    }
    
    func bringData(){
        dragonBallInteractor.requestDragonBall(dataJson: { dataDragon in
            self.modelDragon = dataDragon.items
            self.ui?.updateDragonBall(dragonBallList: self.modelDragon)
        })
    }
        
}
protocol DragonBallUI: AnyObject {
    func updateDragonBall(dragonBallList: [Item])
}
