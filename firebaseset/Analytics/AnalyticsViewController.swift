//
//  AnalyticsViewController.swift
//  firebaseset
//
//  Created by 木元健太郎 on 2021/03/09.
//

import UIKit


class AnalyticsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        AnalyticsUtil.send(event: AnalyticsEventName.pv.rawValue, paramters: [AnalyticsEventParameterKey.name.rawValue:self.classForCoder])
        
    }


    

}




