//
//  BalanceAccessoryView.swift
//  Wei
//
//  Created by omatty198 on 2018/04/11.
//  Copyright © 2018年 yz. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

final class BalanceAccessoryView: UIView, InputAppliable {

    @IBOutlet private weak var balanceLabel: UILabel!
    @IBOutlet private weak var fiatUnitLabel: UILabel!
    @IBOutlet private weak var txFeeLabel: UILabel!

    enum Input {
        case balance(String)
        case txFee(String)
    }
    
    func apply(input: Input) {
        switch input {
        case .balance(let text):
            balanceLabel.text = text
        case .txFee(let text):
            txFeeLabel.text = text
        }
    }
}
