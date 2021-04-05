//
//  AppDelegate.swift
//  firebaseset
//
//  Created by 木元健太郎 on 2021/03/01.
//

import UIKit
import Firebase
import FirebaseUI
import FBSDKCoreKit



@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    override init() {
            super.init()
            // Firebase関連の機能を使う前に必要
        FirebaseUtil.setup()

        let db = Firestore.firestore()
        }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }
    func application(_ app: UIApplication, open url: URL,
                         options: [UIApplication.OpenURLOptionsKey : Any]) -> Bool {
            let sourceApplication = options[UIApplication.OpenURLOptionsKey.sourceApplication] as! String?
            // GoogleまたはFacebook認証の場合、trueを返す
            if FUIAuth.defaultAuthUI()?.handleOpen(url, sourceApplication: sourceApplication) ?? false {
                return true
            }
            return false
        }
    
    
    
    
    
    
}
    

