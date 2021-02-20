//
//  TrackingManager.swift
//  Track It
//
//  Created by Aakash Jha on 20/02/21.
//

import Foundation


struct TrackingManager {
    
    //let trackingID = 783844899004
    let url = "https://www.fedex.com/fedextrack/?trknbr="
    
    
    func createURL(input: String) {
        let trackingURL = "\(url)\(input)"
        print(trackingURL)
    }
    
}



