//
//  APODController.swift
//  Nasa-APOD-in-SwiftUI
//
//  Created by Yunis Farah on 09/09/2020.
//

import SwiftUI

class NasaAPI {
    func loadData(completion: @escaping (DataModel) -> ()) {
        let url = URL(string: "https://api.nasa.gov/planetary/apod?api_key=iHEnb7Drgn6eHoYQ8OJ4LxRWJl3tCM9EZEZbDmuF")

        URLSession.shared.dataTask(with: url!) { (data, _, _) in
            do {
                let receivedData = try JSONDecoder().decode(DataModel.self, from: data!)
                
                DispatchQueue.main.async {
                    completion(recievedData)
                }
                
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
