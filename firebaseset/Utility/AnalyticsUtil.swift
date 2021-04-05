//
//  AnalyticsUtil.swift
//  firebaseset
//
//  Created by 木元健太郎 on 2021/03/09.
//



import Foundation
import FirebaseAnalytics


class AnalyticsUtil {
    static func send(event: String , paramters: [String: Any]? = nil) {
        Analytics.logEvent(event, parameters: paramters)
    }
}




