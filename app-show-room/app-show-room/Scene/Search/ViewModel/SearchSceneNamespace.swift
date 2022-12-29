//
//  SearchSceneNamespace.swift
//  app-show-room
//
//  Created by Moon Yeji on 2022/08/12.
//

import Foundation

enum SearchSceneNamespace {
    
    static let searchBarPlaceholder = "이름 또는 ID를 입력해주세요"
    static let navigationTitle = "Search for"
    static let invalidInputAlertViewModel = InvalidInputAlertViewModel()
    static let searchFailureAlertViewModel = SearchFailureAlertViewModel()
    static let emptyResultAlertViewModel = EmptyResultAlertViewModel()
}

// MARK: - InvalidInputAlertViewModel

extension SearchSceneNamespace {
    
    struct InvalidInputAlertViewModel: AlertViewModel {

        var alertController: UIAlertControllerViewModel = InvalidInputAlertControllerViewModel()
        var alertAction: UIAlertActionViewModel? = InvalidInputAlertActionViewModel()
    }
    
    struct InvalidInputAlertControllerViewModel: UIAlertControllerViewModel {
        
        var title: String? = "ID를 다시 확인해주세요"
        var message: String? = "숫자만 입력 할 수 있어요"
        var preferredStyle: UIAlertControllerStyle = .alert
    }
    
    struct InvalidInputAlertActionViewModel: UIAlertActionViewModel {
        
        var title: String? = "확인"
        var style: UIAlertActionStyle = .defaults
    }
    
}

// MARK: - SearchFailureAlertViewModel

extension SearchSceneNamespace {
    
    struct SearchFailureAlertViewModel: AlertViewModel {
        
        var alertController: UIAlertControllerViewModel = SearchFailureAlertControllerViewModel()
        var alertAction: UIAlertActionViewModel? = SearchFailureAlertActionViewModel()
    }
    
    struct EmptyResultAlertViewModel: AlertViewModel {
        
        var alertController: UIAlertControllerViewModel = EmptyResultAlertControllerViewModel()
        var alertAction: UIAlertActionViewModel? = SearchFailureAlertActionViewModel()
    }
    
    struct SearchFailureAlertControllerViewModel: UIAlertControllerViewModel {
        
        var title: String? = "검색에 실패했습니다"
        var message: String? = "다시 시도해주세요🙏🏻"
        var preferredStyle: UIAlertControllerStyle = .alert
    }
    
    struct EmptyResultAlertControllerViewModel: UIAlertControllerViewModel {
        
        var title: String? = "결과가 없습니다"
        var message: String? = "검색어를 확인해주세요"
        var preferredStyle: UIAlertControllerStyle = .alert
    }
    
    struct SearchFailureAlertActionViewModel: UIAlertActionViewModel {
        
        var title: String? = "확인"
        var style: UIAlertActionStyle = .defaults
    }
    
}
