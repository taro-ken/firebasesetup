//
//  FirestoreViewController.swift
//  firebaseset
//
//  Created by 木元健太郎 on 2021/04/05.
//

import UIKit

class FirestoreViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func addAction(_ sender: Any) {
        Database.addTest()
      }

      @IBAction func readAction(_ sender: Any) {
        Database.readTest() { users in
          for user in users {
            print("\(user.first), \(user.last), \(user.born)")
          }
        }
      }
    }
