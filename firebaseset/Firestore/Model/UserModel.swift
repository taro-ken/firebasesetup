//
//  UserModel.swift
//  firebaseset
//
//  Created by 木元健太郎 on 2021/04/05.
//

import Foundation
import FirebaseAuth

struct UserModel: Codable {

  private var _first: String?
  var first: String { _first ?? "" }
  private var _last: String?
  var last: String { _last ?? "" }
  private var _born: Int?
  var born: Int { _born ?? 0 }

  private var _weight: Double?
  var weight: Double { _weight ?? 0 }

  private var _height: String?
  var height: String { _height ?? "" }

  private let auth = Auth.auth()
  var isEmailValidation: Bool {
    auth.currentUser?.isEmailVerified ?? false
  }

  private enum CodingKeys: String, CodingKey {
    case _first = "first"
    case _last = "last"
    case _born = "born"
  }
}
