//
//  ViewController.swift
//  TokenAPI
//
//  Created by Rahul on 18/05/23.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        apiCall()
    }
    
    let parameters: Parameters = [
        "username": "your_username",
        "password": "your_password"
    ]
    
    private func apiCall() {
        AF.request("https://accounts.spotify.com/authorize", method: .post, parameters: parameters)
            .responseJSON { response in
                switch response.result {
                case .success(let value):
                    // Login successful, handle the response data
                    print(value)
                case .failure(let error):
                    // Login failed, handle the error
                    print(error)
                }
            }
    }



}

