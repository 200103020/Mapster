//
//  AuthStore.swift
//  Mapster
//
//  Created by User on 06.03.2024.
//

import UIKit
import Combine

public extension UIViewController {
    func bindStore<Event, Action>(_ store: Store<Event, Action>,
                                  handler: @escaping (Event) -> Void) -> AnyCancellable {
        store
            .events
            .receiveOnMainQueue()
            .sink { event in
                handler(event)
            }
    }
}
