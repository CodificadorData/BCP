//
//  HomeInteractor.swift
//  AppPapple
//
//  Created by Christian Morante on 18/02/24.
//

import Foundation
import Alamofire
import Kingfisher

class HomeInteractor {
    
    func requestDragonBall(dataJson: @escaping (_ dataDragon: DragonBallEntity) -> Void) {
        
        AF.request("https://dragonball-api.com/api/characters").responseDecodable(of: DragonBallEntity.self) { response in
            switch response.result {
            case .success(let response):
                dataJson(response)
            case .failure(_):
                print("error")
            }
        }
    }
    
}
