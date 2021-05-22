//
//  ComposeDelegate.swift
//  DelegatePattern
//
//  Created by 김지호 on 2021/05/19.
//

import UIKit

protocol ComposeDelegate {
    func composer(_ vc : UIViewController , didInput value: String?)
    func composeDidCancel(_ vc : UIViewController)
}
