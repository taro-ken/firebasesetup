//
//  checkViewController.swift
//  firebaseset
//
//  Created by 木元健太郎 on 2021/03/16.
//

import UIKit

class CheckViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        AnalyticsUtil.send(event: AnalyticsEventName.pv.rawValue, paramters: [AnalyticsEventParameterKey.name.rawValue:self.classForCoder])
        
    }
    

   

}
