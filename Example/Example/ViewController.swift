//
//  ViewController.swift
//  Example
//
//  Created by Sotheavuth.Nguon on 27/6/23.
//

import UIKit
import SimpleNetworkingSDK

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let webService = WebService()
    webService.fetch(url: URL(string: "https://jsonplaceholder.typicode.com/posts")!) { data in
      try! JSONDecoder().decode([Post].self, from: data)
    } completion: { result in
      switch result {
      case let .success(posts):
        if let posts = posts {
          posts.forEach { post in
            print(post.title)
          }
        }
      case let .failure(error):
        print(error.localizedDescription)
      }
    }
  }

}

struct Post: Codable {
  let userID, id: Int
  let title, body: String

  enum CodingKeys: String, CodingKey {
    case userID = "userId"
    case id, title, body
  }
}
