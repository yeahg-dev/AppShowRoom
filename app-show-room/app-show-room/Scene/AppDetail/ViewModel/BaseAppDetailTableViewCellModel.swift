//
//  BaseAppDetailTableViewCellModel.swift
//  app-show-room
//
//  Created by Moon Yeji on 2022/08/15.
//

import Foundation

struct BaseAppDetailTableViewCellModel {
    
    private let app: AppDetail
    
    init(app: AppDetail) {
        self.app = app
    }
    
    var iconImageURL: String? { app.iconImageURL }
    var name: String? { app.appName }
    var provider: String? { app.sellerName }
    // TODO: - price 단위 확인 및 String 변환
    var price: String? { app.price?.description }
    
}
