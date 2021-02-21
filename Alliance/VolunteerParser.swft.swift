//
//  VolunteerParser.swft.swift
//  Alliance
//
//  Created by Sarah Young on 2/21/21.
//

import Foundation

// What if we have thousands of movies? We can help define them and pass their data using basic structs.
struct Volunteer {
    let title, image, overview, releaseDate, rating: String
    let categories: [Int]
}

// Explained more in depth on "httpRequests" branch
protocol LoadDelegate {
    func didFinishLoadData(finished: Bool)
    func resendRequest()
}

class VolunteerClass {
    
    
    var loadDelegate: LoadDelegate?
    
    func getData() {
        guard let path = Bundle.main.path(forResource: "Movies", ofType: "json") else { return }
        let url = URL(fileURLWithPath: path)

        do {
            let data = try Data(contentsOf: url)
            
            // Explained more in depth on "httpRequests" branch
            /*
             
             if serverError == 404 {
             // try to connect the server again
                loadDelegate.resendRequest()
             }
             
             */
            
            parseData(data: data)

        }  catch {
            print(error)
        }
    }
    
    func parseData(data: Data) {
        
            self.loadDelegate!.didFinishLoadData(finished: true)
            
       
    
    
    }
}

