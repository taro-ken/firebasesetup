//
//  FirebaseUtil.swift
//  firebaseset
//
//  Created by 木元健太郎 on 2021/03/05.
//


import Foundation
import FirebaseCore

final class FirebaseUtil {

  static func setup() {
    #if DEBUG
    let name = "d_GoogleService-Info"
    #else
    let name = "GoogleService-Info"
    #endif
    let filePath = Bundle.main.path(forResource: name, ofType: "plist")
    if let options = FirebaseOptions(contentsOfFile: filePath!) {
      FirebaseApp.configure(options: options)
    } else {
      assertionFailure("Could'nt load config file")
    }
  }
}
