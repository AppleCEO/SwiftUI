//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    @State private var results = [Result]()
    
    var body: some View {
        List(results, id: \.code) { item in
            VStack(alignment: .leading) {
                Text(item.code)
                    .font(.headline)
                Text(item.string)
            }
        }
        .task {
            await loadData()
        }
    }
    
    func loadData() async {
        guard let url = URL(string: "https://reqres.in/api/cupcakes") else {
            print("Invalid URL")
            return
        }
        
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        
        do {
//            let (data, _) = try await URLSession.shared.upload(for: request, from: encoded)
//            if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
//                results = decodedResponse.results
//            }
            let jsonData = try JSONEncoder().encode(BioAuthModel(data: "gapcxaRVr+2Kyhta0uc3KuEolqEM8xL+4X7r+JSQU7c="))
            let url = URL(string: "https://api-stg-kr.paywatchglobal.com/authenticate/v2.0/bio_auth/check/")!
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.setValue( "Bearer QVlOvICNb1cytJIBwQhJ9H4lxGkRAE", forHTTPHeaderField: "Authorization")
            request.setValue(String(jsonData.count), forHTTPHeaderField: "Content-Length")
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.httpBody = jsonData

            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data, error == nil else {
                    print(error?.localizedDescription ?? "No data")
                    return
                }
                let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
                if let responseJSON = responseJSON as? [String: Any] {
                    print(responseJSON)
                    if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                        results = decodedResponse.targets
                        print(decodedResponse.targets[0].string)
                    }
//                    if let isMatched = responseJSON["is_matched"] as? Bool {
//                    }
                }
            }
            task.resume()
        } catch {
            print("Invalid data")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct Response: Codable {
//    var results: [Result]
//}
//
//struct Result: Codable {
//    var trackId: Int
//    var trackName: String
//    var collectionName: String
//}

struct BioAuthModel: Codable {
    let data: String
}

struct Result: Codable {
    let string: String
    let code: String
}

struct Response: Codable {
    var targets: [Result]
}
