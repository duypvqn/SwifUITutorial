//
//  OrderService.swift
//  StudySwitUI
//
//  Created by DuyPhamViet on 2021/09/30.
//

import Foundation

class SearchService {
    static func getSongs(complete:@escaping (([Result])->Void)){
        guard let url = URL(string: "https://itunes.apple.com/search?term=taylor+swift&entity=song") else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                    DispatchQueue.main.async {
                        complete(decodedResponse.results)
                    }
                }
            }
        }.resume()
    }
}
