//
//  ViewController.swift
//  Rewards Sample
//
//  Created by João Paulo Serodio on 03/11/20.
//

import UIKit
import HalloRewardsLibrary

class ViewController: UIViewController {

    private let textView: UITextView = .init()

    override func viewDidLoad() {
        super.viewDidLoad()

        var token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6InRva2VuX3VuaWNyZWQiLCJu"
        token += "YW1lIjoiVW5pY3JlZCBjbHViZSIsImNvb3AiOjEsImlhdCI6MTYwMTY2NDY5N30"
        token += ".j7gjSXsVKaWKuCpFLsJf8h3j9AjD79sejEZlyQa_Ad8"

        textView.text = token
        textView.backgroundColor = UIColor.lightGray.withAlphaComponent(0.5)
        textView.frame = CGRect(x: 0, y: 90, width: 240, height: 200)
        textView.center.x = view.center.x
        view.addSubview(textView)

        let button: UIButton = .init(frame: .init(x: 0, y: 0, width: 100, height: 55))
        button.center = view.center
        button.backgroundColor = .red
        button.setTitle("Iniciar SDK", for: .normal)
        button.addTarget(self, action: #selector(startSDK), for: .touchUpInside)
        view.addSubview(button)

        HalloRewards.start(self)

        HalloRewards.onLogAnalyticsEvent { (tag, params) in

        }

    }

    @objc func startSDK() {
        if let token = textView.text {
            HalloRewards.initialize(token: token)
            HalloRewards.start(self)
        }
    }

}
